/************************************************************************
    FAUST Architecture File
    Copyright (C) 2016 GRAME, Centre National de Creation Musicale
    ---------------------------------------------------------------------
    This Architecture section is free software; you can redistribute it
    and/or modify it under the terms of the GNU General Public License
    as published by the Free Software Foundation; either version 3 of
    the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; If not, see <http://www.gnu.org/licenses/>.

    EXCEPTION : As a special exception, you may create a larger work
    that contains this FAUST architecture section and distribute
    that work under terms of your choice, so long as this FAUST
    architecture section is not modified.

 ************************************************************************/

#include <iostream>
#include <fstream>

#include "faust/dsp/llvm-dsp.h"
#include "faust/dsp/libfaust.h"
#include "faust/audio/dummy-audio.h"
#include "faust/misc.h"

using namespace std;

static void printList(const vector<string>& list)
{
    for (int i = 0; i < list.size(); i++) {
        std::cout << "item: " << list[i] << "\n";
    }
}

static std::string pathToContent(const std::string& path)
{
    std::ifstream file(path.c_str(), std::ifstream::binary);
    
    file.seekg(0, file.end);
    int size = int(file.tellg());
    file.seekg(0, file.beg);
    
    // And allocate buffer to that a single line can be read...
    char* buffer = new char[size + 1];
    file.read(buffer, size);
    
    // Terminate the string
    buffer[size] = 0;
    std::string result = buffer;
    file.close();
    delete [] buffer;
    return result;
}

int main(int argc, char* argv[])
{
    if (isopt(argv, "-h") || isopt(argv, "-help")) {
        cout << "llvm-test foo.dsp" << endl;
        exit(EXIT_FAILURE);
    }
    
    string error_msg;
    
    cout << "Libfaust version : " << getCLibFaustVersion () << endl;
    dsp_factory* factory = createDSPFactoryFromFile(argv[argc-1], 0, NULL, "", error_msg, -1);
    
    if (!factory) {
        cerr << "Cannot create factory : " << error_msg;
        exit(EXIT_FAILURE);
    }
    
    cout << "getCompileOptions " << factory->getCompileOptions() << endl;
    printList(factory->getLibraryList());
    printList(factory->getIncludePathnames());    
    
    dsp* DSP = factory->createDSPInstance();
    if (!DSP) {
        cerr << "Cannot create instance "<< endl;
        exit(EXIT_FAILURE);
    }
    
    cout << "getName " << factory->getName() << endl;
    cout << "getSHAKey " << factory->getSHAKey() << endl;
    
    dummyaudio audio(2);
    if (!audio.init("FaustDSP", DSP)) {
        return 0;
    }
    
    audio.start();
    audio.stop();
    
    delete DSP;
    deleteDSPFactory(static_cast<llvm_dsp_factory*>(factory));
    
    // Test generateAuxFilesFromFile/generateAuxFilesFromString
    int argc2 = 0;
    const char* argv2[64];
    argv2[argc2++] = "-svg";
    argv2[argc2++] = "-O";
    argv2[argc2++] = "/private/var/tmp";
    argv2[argc2] = 0;  // NULL terminated argv
    
    {
        cout << "=============================\n";
        cout << "Test generateAuxFilesFromFile\n";
        if (!generateAuxFilesFromFile(argv[argc-1], argc2, argv2, error_msg)) {
            cout << "ERROR in generateAuxFilesFromFile : " << error_msg;
        } else {
            string filename =  string(argv[argc-1]);
            string pathname = "/private/var/tmp/" + filename.substr(0, filename.size() - 4) + "-svg";
            ifstream reader(pathname.c_str());
            if (!reader.is_open()) {
                cout << "ERROR in generateAuxFilesFromFile error : " << pathname << " cannot be opened\n";
            } else {
                cout << "generateAuxFilesFromFile OK\n";
            }
        }
    }
    
    {
        cout << "===============================\n";
        cout << "Test generateAuxFilesFromString\n";
        if (!generateAuxFilesFromString("FaustDSP", pathToContent(argv[argc-1]), argc2, argv2, error_msg)) {
            cout << "generateAuxFilesFromString error : " << error_msg;
        } else {
            string pathname = "/private/var/tmp/FaustDSP-svg";
            ifstream reader(pathname.c_str());
            if (!reader.is_open()) {
                cout << "ERROR in generateAuxFilesFromString error : " << pathname << " cannot be opened\n";
            } else {
                cout << "generateAuxFilesFromString OK\n";
            }
        }
    }
    
    return 0;
}


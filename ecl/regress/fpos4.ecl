/*##############################################################################

    HPCC SYSTEMS software Copyright (C) 2012 HPCC Systems®.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
############################################################################## */

aRecord := RECORD
unsigned8 __filepos{VIRTUAL(FILEPOSITION)};
data9 per_cid;
    END;

aDataset := DATASET('a',aRecord,FLAT);
a1 := aDataset(per_cid<>x'012345678901234567' AND __filepos>=100);
output(a1,, 'outa.d00');

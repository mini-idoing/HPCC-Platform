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

aaa := DATASET('aaa', {STRING1 fa; STRING1 fb;}, HOLE);
bbb := DATASET('aaa', {STRING1 fa; STRING1 fb;}, HOLE);

a1 := aaa(fa = 'a');
a2 := aaa(fa = 'b');
a3 := TABLE(aaa, {aaa.fa,aaa.fb});

// OK
OUTPUT(aaa+a1);
OUTPUT(a1+a2);

// BAD
OUTPUT(a1+a3);
OUTPUT(aaa+bbb);

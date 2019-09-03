/*
   Copyright (C) 2019 MIRACL UK Ltd.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.


    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

     https://www.gnu.org/licenses/agpl-3.0.en.html

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   You can be released from the requirements of the license by purchasing
   a commercial license. Buying such a license is mandatory as soon as you
   develop commercial activities involving the MIRACL Core Crypto SDK
   without disclosing the source code of your own applications, or shipping
   the MIRACL Core Crypto SDK with a closed source product.
*/

/* To reverse the groups G1 and G2, edit BLS*.go

Swap G1 <-> G2
Swap ECP <-> ECPn
Disable G2 precomputation
Switch G1/G2 parameter order in pairing function calls

Swap G1S and G2S in this program

*/

extern crate core;

use core::rand::RAND;

pub fn printbinary(array: &[u8]) {
    for i in 0..array.len() {
        print!("{:02X}", array[i])
    }
    println!("")
}

fn bls_bn254(mut rng: &mut RAND) {
    use core::bn254::bls;

    const BFS: usize = bls::BFS;
    const BGS: usize = bls::BGS;

    let mut s: [u8; BGS] = [0; BGS];

    const G1S: usize = BFS + 1; /* Group 1 Size - compressed */
    const G2S: usize = 2 * BFS + 1; /* Group 2 Size - compressed*/

    let mut w: [u8; G2S] = [0; G2S];
    let mut sig: [u8; G1S] = [0; G1S];

    let m = String::from("This is a test message");

    let mut res = bls::init();
    if res != 0 {
        println!("Failed to Initialize");
        return;
    }

    res = bls::key_pair_generate(&mut rng, &mut s, &mut w);
    if res != 0 {
        println!("Failed to Generate Keys");
        return;
    }

    print!("Private key : 0x");
    printbinary(&s);
    print!("Public  key : 0x");
    printbinary(&w);

    bls::sign(&mut sig, &m, &s);
    print!("Signature : 0x");
    printbinary(&sig);

    res = bls::verify(&sig, &m, &w);
    if res == 0 {
        println!("Signature is OK");
    } else {
        println!("Signature is *NOT* OK");
    }
}

fn bls_bls383(mut rng: &mut RAND) {
    use core::bls383::bls;

    const BFS: usize = bls::BFS;
    const BGS: usize = bls::BGS;

    let mut s: [u8; BGS] = [0; BGS];

    const G1S: usize = BFS + 1; /* Group 1 Size  - compressed */
    const G2S: usize = 2 * BFS + 1; /* Group 2 Size  - compressed */

    let mut w: [u8; G2S] = [0; G2S];
    let mut sig: [u8; G1S] = [0; G1S];

    let m = String::from("This is a test message");

    let mut res = bls::init();
    if res != 0 {
        println!("Failed to Initialize");
        return;
    }
    res = bls::key_pair_generate(&mut rng, &mut s, &mut w);
    if res != 0 {
        println!("Failed to Generate Keys");
        return;
    }
    print!("Private key : 0x");
    printbinary(&s);
    print!("Public  key : 0x");
    printbinary(&w);

    bls::sign(&mut sig, &m, &s);
    print!("Signature : 0x");
    printbinary(&sig);

    res = bls::verify(&sig, &m, &w);
    if res == 0 {
        println!("Signature is OK");
    } else {
        println!("Signature is *NOT* OK");
    }
}

fn bls_bls24(mut rng: &mut RAND) {
    use core::bls24::bls192;

    const BFS: usize = bls192::BFS;
    const BGS: usize = bls192::BGS;

    let mut s: [u8; BGS] = [0; BGS];

    const G1S: usize = BFS + 1; /* Group 1 Size  - compressed */
    const G2S: usize = 4 * BFS + 1; /* Group 2 Size  - compressed */

    let mut w: [u8; G2S] = [0; G2S];
    let mut sig: [u8; G1S] = [0; G1S];

    let m = String::from("This is a test message");

    let mut res = bls192::init();
    if res != 0 {
        println!("Failed to Initialize");
        return;
    }
    res = bls192::key_pair_generate(&mut rng, &mut s, &mut w);
    if res != 0 {
        println!("Failed to Generate Keys");
        return;
    }
    print!("Private key : 0x");
    printbinary(&s);
    print!("Public  key : 0x");
    printbinary(&w);

    bls192::sign(&mut sig, &m, &s);
    print!("Signature : 0x");
    printbinary(&sig);

    res = bls192::verify(&sig, &m, &w);
    if res == 0 {
        println!("Signature is OK");
    } else {
        println!("Signature is *NOT* OK");
    }
}

fn bls_bls48(mut rng: &mut RAND) {
    use core::bls48::bls256;

    const BFS: usize = bls256::BFS;
    const BGS: usize = bls256::BGS;

    let mut s: [u8; BGS] = [0; BGS];

    const G1S: usize = BFS + 1; /* Group 1 Size  - compressed */
    const G2S: usize = 8 * BFS + 1; /* Group 2 Size  - compressed */

    let mut w: [u8; G2S] = [0; G2S];
    let mut sig: [u8; G1S] = [0; G1S];

    let m = String::from("This is a test message");
    let mut res = bls256::init();
    if res != 0 {
        println!("Failed to Initialize");
        return;
    }
    res = bls256::key_pair_generate(&mut rng, &mut s, &mut w);
    if res != 0 {
        println!("Failed to Generate Keys");
        return;
    }
    print!("Private key : 0x");
    printbinary(&s);
    print!("Public  key : 0x");
    printbinary(&w);

    bls256::sign(&mut sig, &m, &s);
    print!("Signature : 0x");
    printbinary(&sig);

    res = bls256::verify(&sig, &m, &w);
    if res == 0 {
        println!("Signature is OK");
    } else {
        println!("Signature is *NOT* OK");
    }
}

fn main() {
    use core::arch;

    let mut raw: [u8; 100] = [0; 100];

    let mut rng = RAND::new();
    rng.clean();
    for i in 0..100 {
        raw[i] = i as u8
    }

    rng.seed(100, &raw);

    println!("{} bit build", arch::CHUNK);

    println!("Testing BLS signature for curve bn254");
    bls_bn254(&mut rng);
    println!("\nTesting BLS signature for curve bls383");
    bls_bls383(&mut rng);
    println!("\nTesting BLS signature for curve bls24");
    bls_bls24(&mut rng);
    println!("\nTesting BLS signature for curve bls48");
    bls_bls48(&mut rng);
}

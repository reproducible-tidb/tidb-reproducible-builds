#!/bin/bash
source $1
type build | sed '1d' > /tmp/tmp.sh
type package | sed '1d' >> /tmp/tmp.sh
echo "mkdir /src
git clone $pkggit /src/$pkgname:$pkgver
cd /src/$pkgname:$pkgver
git checkout $pkgcommit
build
package" >> /tmp/tmp.sh
docker run -it -v /tmp/tmp.sh:/tmp.sh -v $PWD:/pkg $image bash /tmp.sh

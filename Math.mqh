//+------------------------------------------------------------------+
//|                 EA31337 - multi-strategy advanced trading robot. |
//|                       Copyright 2016-2019, 31337 Investments Ltd |
//|                                       https://github.com/EA31337 |
//+------------------------------------------------------------------+

/*
    This file is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

// Prevents processing this includes file for the second time.
#ifndef MATH_MQH
#define MATH_MQH

#define NEAR_ZERO 0.00001

// Includes standard C++ library for non-MQL code.
#ifndef __MQLBUILD__
#include <cfloat>
#include <cmath>
using namespace std;
#endif

/**
 * Class to provide math related methods.
 */
class Math {

private:
public:

  Math() {
  }

};
#endif // MATH_MQH

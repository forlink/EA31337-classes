//+------------------------------------------------------------------+
//|                                                EA31337 framework |
//|                       Copyright 2016-2020, 31337 Investments Ltd |
//|                                       https://github.com/EA31337 |
//+------------------------------------------------------------------+

/*
 *  This file is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.

 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.

 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * @file
 * Test functionality of Action class.
 */

// Includes.
#include "../Task.mqh"
#include "../DictObject.mqh"
#include "../EA.mqh"
#include "../Test.mqh"

// Global variables.
Chart *chart;
EA *ea;
DictObject<short, Task> tasks;

// Define strategy classes.
class Stg1 : public Strategy {
 public:
  void Stg1(StgParams &_params, string _name = "Stg1") : Strategy(_params, _name) {}
  static Stg1 *Init(ENUM_TIMEFRAMES _tf = NULL, unsigned long _magic_no = 0, ENUM_LOG_LEVEL _log_level = V_INFO) {
    StgParams stg_params;
    stg_params.SetTf(_tf);
    stg_params.SetMagicNo(_magic_no > 0 ? _magic_no : rand());
    Strategy *_strat = new Stg1(stg_params, __FUNCTION__);
    return _strat;
  }
  bool SignalOpen(ENUM_ORDER_TYPE _cmd, int _method, double _level) { return true; }
  bool SignalOpenFilter(ENUM_ORDER_TYPE _cmd, int _method = 0) { return true; }
  double SignalOpenBoost(ENUM_ORDER_TYPE _cmd, int _method = 0) { return 1.0; }
  bool SignalClose(ENUM_ORDER_TYPE _cmd, int _method, double _level) { return true; }
  double PriceLimit(ENUM_ORDER_TYPE _cmd, ENUM_ORDER_TYPE_VALUE _mode, int _method = 0, double _level = 0.0) { return _level; }
};

/**
 * Implements Init event handler.
 */
int OnInit() {
  bool _result = true;
  // Initializes chart.
  chart = new Chart();
  // Initializes EA.
  EA_Params ea_params(__FILE__);
  ea = new EA(ea_params);
  //_result &= ea.StrategyAdd<Stg1>(127);
  _result &= GetLastError() == ERR_NO_ERROR;
  return (_result ? INIT_SUCCEEDED : INIT_FAILED);
}

/**
 * Implements Tick event handler.
 */
void OnTick() {
  chart.OnTick();
  if (chart.IsNewBar()) {
    unsigned int _bar_index = chart.GetBarIndex();
    switch (_bar_index) {
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
      case 5:
        break;
      case 6:
        break;
      case 7:
        break;
      case 8:
        break;
      case 9:
        break;
    }
  }
}

/**
 * Implements Deinit event handler.
 */
void OnDeinit(const int reason) { delete chart; }
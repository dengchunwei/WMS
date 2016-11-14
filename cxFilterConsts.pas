
{********************************************************************}
{                                                                    }
{       Developer Express Visual Component Library                   }
{       ExpressDataController                                        }
{                                                                    }
{       Copyright (c) 1998-2010 Developer Express Inc.               }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{   The entire contents of this file is protected by U.S. and        }
{   International Copyright Laws. Unauthorized reproduction,         }
{   reverse-engineering, and distribution of all or any portion of   }
{   the code contained in this file is strictly prohibited and may   }
{   result in severe civil and criminal penalties and will be        }
{   prosecuted to the maximum extent possible under the law.         }
{                                                                    }
{   RESTRICTIONS                                                     }
{                                                                    }
{   THIS SOURCE CODE AND ALL RESULTING INTERMEDIATE FILES            }
{   (DCU, OBJ, DLL, ETC.) ARE CONFIDENTIAL AND PROPRIETARY TRADE     }
{   SECRETS OF DEVELOPER EXPRESS INC. THE REGISTERED DEVELOPER IS    }
{   LICENSED TO DISTRIBUTE THE EXPRESSDATACONTROLLER AND ALL         }
{   ACCOMPANYING VCL CONTROLS AS PART OF AN EXECUTABLE PROGRAM ONLY. }
{                                                                    }
{   THE SOURCE CODE CONTAINED WITHIN THIS FILE AND ALL RELATED       }
{   FILES OR ANY PORTION OF ITS CONTENTS SHALL AT NO TIME BE         }
{   COPIED, TRANSFERRED, SOLD, DISTRIBUTED, OR OTHERWISE MADE        }
{   AVAILABLE TO OTHER INDIVIDUALS WITHOUT EXPRESS WRITTEN CONSENT   }
{   AND PERMISSION FROM DEVELOPER EXPRESS INC.                       }
{                                                                    }
{   CONSULT THE END USER LICENSE AGREEMENT FOR INFORMATION ON        }
{   ADDITIONAL RESTRICTIONS.                                         }
{                                                                    }
{********************************************************************}

unit cxFilterConsts;

{$I cxVer.inc}

interface

resourcestring
  // base operators
  cxSFilterOperatorEqual = '等于';  //equals
  cxSFilterOperatorNotEqual = '不等于';//does not equal
  cxSFilterOperatorLess = '小于'; //is less than
  cxSFilterOperatorLessEqual = '小于或等于'; //is less than or equal to
  cxSFilterOperatorGreater = '大于';  //is greater than
  cxSFilterOperatorGreaterEqual = '大于或等于';//is greater than or equal to
  cxSFilterOperatorLike = 'like';
  cxSFilterOperatorNotLike = 'not like';
  cxSFilterOperatorBetween = '始于'; //between
  cxSFilterOperatorNotBetween = '不始于';//not between
  cxSFilterOperatorInList = '范围内'; //in
  cxSFilterOperatorNotInList = '不在范围内'; //not in

  cxSFilterOperatorYesterday = '昨天';//is yesterday
  cxSFilterOperatorToday = '今天';//is today
  cxSFilterOperatorTomorrow = '明天';//is tomorrow

  cxSFilterOperatorLast7Days = '过去7天';//is last 7 days
  cxSFilterOperatorLastWeek = '上周';//is last week
  cxSFilterOperatorLast14Days = '过去14天';//is last 14 days
  cxSFilterOperatorLastTwoWeeks = '过去两周';//is last two weeks
  cxSFilterOperatorLast30Days = '过去30天';//is last 30 days
  cxSFilterOperatorLastMonth = '上个月';//is last month
  cxSFilterOperatorLastYear = '去年';//is last year
  cxSFilterOperatorPast = '已经过去';//is past

  cxSFilterOperatorThisWeek = '这周';//is this week
  cxSFilterOperatorThisMonth = '这月';//is this month
  cxSFilterOperatorThisYear = '今年';//is this year

  cxSFilterOperatorNext7Days = '未来7天';//is next 7 days
  cxSFilterOperatorNextWeek = '未来一周';//is next week
  cxSFilterOperatorNext14Days = '未来14天';//is next 14 days
  cxSFilterOperatorNextTwoWeeks = '未来两周';//is next two weeks
  cxSFilterOperatorNext30Days = '未来30天';//is next 30 days
  cxSFilterOperatorNextMonth = '未来一个月';//is next month
  cxSFilterOperatorNextYear = '明年';//is next year
  cxSFilterOperatorFuture = '未来';//is future

  cxSFilterAndCaption = '与';//and
  cxSFilterOrCaption = '或';//or
  cxSFilterNotCaption = '否';//not
  cxSFilterBlankCaption = '空';//blank

  // derived
  cxSFilterOperatorIsNull = '空';//is blank
  cxSFilterOperatorIsNotNull = '不为空';//is not blank
  cxSFilterOperatorBeginsWith = '始于';//begins with
  cxSFilterOperatorDoesNotBeginWith = '并非起始于';//does not begin with
  cxSFilterOperatorEndsWith = '止于';//ends with
  cxSFilterOperatorDoesNotEndWith = '并非结束于';//does not end with
  cxSFilterOperatorContains = '包含';//contains
  cxSFilterOperatorDoesNotContain = '不包含';//does not contain
  // filter listbox's values
  cxSFilterBoxAllCaption = '(全部)'; //(All)
  cxSFilterBoxCustomCaption = '(自定义)';//(Custom...)
  cxSFilterBoxBlanksCaption = '(空)';//(Blanks)
  cxSFilterBoxNonBlanksCaption = '(非空)';//(NonBlanks)

function cxSFilterString(AResString: Pointer): string;

type
  TcxFilterGetResourceStringFunc = function(
    AResString: Pointer): string;

var
  cxFilterGetResourceStringFunc: TcxFilterGetResourceStringFunc;

implementation

uses
  dxCore;

function cxSFilterString(
  AResString: Pointer): string;
begin
  if Assigned(cxFilterGetResourceStringFunc) then
    Result := cxFilterGetResourceStringFunc(AResString)
  else
    Result := LoadResString(AResString);
end;

procedure AddExpressDataFilterResourceStringNames(AProduct: TdxProductResourceStrings);

  procedure InternalAdd(const AResourceStringName: string; AAdress: Pointer);
  begin
    AProduct.Add(AResourceStringName, AAdress);
  end;

begin
  InternalAdd('cxSFilterOperatorEqual', @cxSFilterOperatorEqual);
  InternalAdd('cxSFilterOperatorNotEqual', @cxSFilterOperatorNotEqual);
  InternalAdd('cxSFilterOperatorLess', @cxSFilterOperatorLess);
  InternalAdd('cxSFilterOperatorLessEqual', @cxSFilterOperatorLessEqual);
  InternalAdd('cxSFilterOperatorGreater', @cxSFilterOperatorGreater);
  InternalAdd('cxSFilterOperatorGreaterEqual', @cxSFilterOperatorGreaterEqual);
  InternalAdd('cxSFilterOperatorLike', @cxSFilterOperatorLike);
  InternalAdd('cxSFilterOperatorNotLike', @cxSFilterOperatorNotLike);
  InternalAdd('cxSFilterOperatorBetween', @cxSFilterOperatorBetween);
  InternalAdd('cxSFilterOperatorNotBetween', @cxSFilterOperatorNotBetween);
  InternalAdd('cxSFilterOperatorInList', @cxSFilterOperatorInList);
  InternalAdd('cxSFilterOperatorNotInList', @cxSFilterOperatorNotInList);
  InternalAdd('cxSFilterOperatorYesterday', @cxSFilterOperatorYesterday);
  InternalAdd('cxSFilterOperatorToday', @cxSFilterOperatorToday);
  InternalAdd('cxSFilterOperatorTomorrow', @cxSFilterOperatorTomorrow);
  InternalAdd('cxSFilterOperatorLast7Days', @cxSFilterOperatorLast7Days);
  InternalAdd('cxSFilterOperatorLastWeek', @cxSFilterOperatorLastWeek);
  InternalAdd('cxSFilterOperatorLast14Days', @cxSFilterOperatorLast14Days);
  InternalAdd('cxSFilterOperatorLastTwoWeeks', @cxSFilterOperatorLastTwoWeeks);
  InternalAdd('cxSFilterOperatorLast30Days', @cxSFilterOperatorLast30Days);
  InternalAdd('cxSFilterOperatorLastMonth', @cxSFilterOperatorLastMonth);
  InternalAdd('cxSFilterOperatorLastYear', @cxSFilterOperatorLastYear);
  InternalAdd('cxSFilterOperatorPast', @cxSFilterOperatorPast);
  InternalAdd('cxSFilterOperatorThisWeek', @cxSFilterOperatorThisWeek);
  InternalAdd('cxSFilterOperatorThisMonth', @cxSFilterOperatorThisMonth);
  InternalAdd('cxSFilterOperatorThisYear', @cxSFilterOperatorThisYear);
  InternalAdd('cxSFilterOperatorNext7Days', @cxSFilterOperatorNext7Days);
  InternalAdd('cxSFilterOperatorNextWeek', @cxSFilterOperatorNextWeek);
  InternalAdd('cxSFilterOperatorNext14Days', @cxSFilterOperatorNext14Days);
  InternalAdd('cxSFilterOperatorNextTwoWeeks', @cxSFilterOperatorNextTwoWeeks);
  InternalAdd('cxSFilterOperatorNext30Days', @cxSFilterOperatorNext30Days);
  InternalAdd('cxSFilterOperatorNextMonth', @cxSFilterOperatorNextMonth);
  InternalAdd('cxSFilterOperatorNextYear', @cxSFilterOperatorNextYear);
  InternalAdd('cxSFilterOperatorFuture', @cxSFilterOperatorFuture);
  InternalAdd('cxSFilterAndCaption', @cxSFilterAndCaption);
  InternalAdd('cxSFilterOrCaption', @cxSFilterOrCaption);
  InternalAdd('cxSFilterNotCaption', @cxSFilterNotCaption);
  InternalAdd('cxSFilterBlankCaption', @cxSFilterBlankCaption);
  InternalAdd('cxSFilterOperatorIsNull', @cxSFilterOperatorIsNull);
  InternalAdd('cxSFilterOperatorIsNotNull', @cxSFilterOperatorIsNotNull);
  InternalAdd('cxSFilterOperatorBeginsWith', @cxSFilterOperatorBeginsWith);
  InternalAdd('cxSFilterOperatorDoesNotBeginWith', @cxSFilterOperatorDoesNotBeginWith);
  InternalAdd('cxSFilterOperatorEndsWith', @cxSFilterOperatorEndsWith);
  InternalAdd('cxSFilterOperatorDoesNotEndWith', @cxSFilterOperatorDoesNotEndWith);
  InternalAdd('cxSFilterOperatorContains', @cxSFilterOperatorContains);
  InternalAdd('cxSFilterOperatorDoesNotContain', @cxSFilterOperatorDoesNotContain);
  InternalAdd('cxSFilterBoxAllCaption', @cxSFilterBoxAllCaption);
  InternalAdd('cxSFilterBoxCustomCaption', @cxSFilterBoxCustomCaption);
  InternalAdd('cxSFilterBoxBlanksCaption', @cxSFilterBoxBlanksCaption);
  InternalAdd('cxSFilterBoxNonBlanksCaption', @cxSFilterBoxNonBlanksCaption);
end;

initialization
  dxResourceStringsRepository.RegisterProduct('ExpressDataFilter', @AddExpressDataFilterResourceStringNames);

finalization
  dxResourceStringsRepository.UnRegisterProduct('ExpressDataFilter');

end.

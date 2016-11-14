
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
  cxSFilterOperatorEqual = '����';  //equals
  cxSFilterOperatorNotEqual = '������';//does not equal
  cxSFilterOperatorLess = 'С��'; //is less than
  cxSFilterOperatorLessEqual = 'С�ڻ����'; //is less than or equal to
  cxSFilterOperatorGreater = '����';  //is greater than
  cxSFilterOperatorGreaterEqual = '���ڻ����';//is greater than or equal to
  cxSFilterOperatorLike = 'like';
  cxSFilterOperatorNotLike = 'not like';
  cxSFilterOperatorBetween = 'ʼ��'; //between
  cxSFilterOperatorNotBetween = '��ʼ��';//not between
  cxSFilterOperatorInList = '��Χ��'; //in
  cxSFilterOperatorNotInList = '���ڷ�Χ��'; //not in

  cxSFilterOperatorYesterday = '����';//is yesterday
  cxSFilterOperatorToday = '����';//is today
  cxSFilterOperatorTomorrow = '����';//is tomorrow

  cxSFilterOperatorLast7Days = '��ȥ7��';//is last 7 days
  cxSFilterOperatorLastWeek = '����';//is last week
  cxSFilterOperatorLast14Days = '��ȥ14��';//is last 14 days
  cxSFilterOperatorLastTwoWeeks = '��ȥ����';//is last two weeks
  cxSFilterOperatorLast30Days = '��ȥ30��';//is last 30 days
  cxSFilterOperatorLastMonth = '�ϸ���';//is last month
  cxSFilterOperatorLastYear = 'ȥ��';//is last year
  cxSFilterOperatorPast = '�Ѿ���ȥ';//is past

  cxSFilterOperatorThisWeek = '����';//is this week
  cxSFilterOperatorThisMonth = '����';//is this month
  cxSFilterOperatorThisYear = '����';//is this year

  cxSFilterOperatorNext7Days = 'δ��7��';//is next 7 days
  cxSFilterOperatorNextWeek = 'δ��һ��';//is next week
  cxSFilterOperatorNext14Days = 'δ��14��';//is next 14 days
  cxSFilterOperatorNextTwoWeeks = 'δ������';//is next two weeks
  cxSFilterOperatorNext30Days = 'δ��30��';//is next 30 days
  cxSFilterOperatorNextMonth = 'δ��һ����';//is next month
  cxSFilterOperatorNextYear = '����';//is next year
  cxSFilterOperatorFuture = 'δ��';//is future

  cxSFilterAndCaption = '��';//and
  cxSFilterOrCaption = '��';//or
  cxSFilterNotCaption = '��';//not
  cxSFilterBlankCaption = '��';//blank

  // derived
  cxSFilterOperatorIsNull = '��';//is blank
  cxSFilterOperatorIsNotNull = '��Ϊ��';//is not blank
  cxSFilterOperatorBeginsWith = 'ʼ��';//begins with
  cxSFilterOperatorDoesNotBeginWith = '������ʼ��';//does not begin with
  cxSFilterOperatorEndsWith = 'ֹ��';//ends with
  cxSFilterOperatorDoesNotEndWith = '���ǽ�����';//does not end with
  cxSFilterOperatorContains = '����';//contains
  cxSFilterOperatorDoesNotContain = '������';//does not contain
  // filter listbox's values
  cxSFilterBoxAllCaption = '(ȫ��)'; //(All)
  cxSFilterBoxCustomCaption = '(�Զ���)';//(Custom...)
  cxSFilterBoxBlanksCaption = '(��)';//(Blanks)
  cxSFilterBoxNonBlanksCaption = '(�ǿ�)';//(NonBlanks)

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

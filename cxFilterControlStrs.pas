
{********************************************************************}
{                                                                    }
{       Developer Express Visual Component Library                   }
{       ExpressFilterControl                                         }
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
{   LICENSED TO DISTRIBUTE THE EXPRESSEDITORS AND ALL                }
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

unit cxFilterControlStrs;

{$I cxVer.inc}

interface

resourcestring
  // cxFilterBoolOperator
  cxSFilterBoolOperatorAnd = '与';        // AND
  cxSFilterBoolOperatorOr = '或';          // OR
  cxSFilterBoolOperatorNotAnd = 'NOT AND'; // not all
  cxSFilterBoolOperatorNotOr = 'NOT OR';   // not any
  //
  cxSFilterRootButtonCaption = '过滤'; //Filter
  cxSFilterAddCondition = '添加条件'; //Add &Condition
  cxSFilterAddGroup = '添加组'; //Add &Group
  cxSFilterRemoveRow = '&移除行';//&Remove Row'
  cxSFilterClearAll = '清空所有';//Clear &All
  cxSFilterFooterAddCondition = '摁下按钮添加一个新的条件';//'press the button to add a new condition

  cxSFilterGroupCaption = '适用于下列条件'; //applies to the following conditions
  cxSFilterRootGroupCaption = '<root>';
  cxSFilterControlNullString = '<empty>';

  cxSFilterErrorBuilding = '不能从源代码构建滤波器'; //Can''t build filter from source

  //FilterDialog
  cxSFilterDialogCaption = '自定义过滤器';//Custom Filter
  cxSFilterDialogInvalidValue = '无效值';//Invalid value
  cxSFilterDialogUse = '使用'; //Use
  cxSFilterDialogSingleCharacter = '代表任何单个字符';//to represent any single character
  cxSFilterDialogCharactersSeries = '代表任何多个字符'; //to represent any series of characters
  cxSFilterDialogOperationAnd = '与'; // AND
  cxSFilterDialogOperationOr = '或'; // OR
  cxSFilterDialogRows = '显示行:'; //Show rows where:

  // FilterControlDialog
  cxSFilterControlDialogCaption = '过滤条件'; //Filter builder
  cxSFilterControlDialogNewFile = 'untitled.flt';
  cxSFilterControlDialogOpenDialogCaption = '打开过滤文件';//Open an existing filter
  cxSFilterControlDialogSaveDialogCaption = '保存过滤条件'; //Save the active filter to file
  cxSFilterControlDialogActionSaveCaption = '&另存为...'; //&Save As...
  cxSFilterControlDialogActionSaveHint = '另存为|保存有效过滤器用一个新的名字';//Save As|Saves the active filter with a new name
  cxSFilterControlDialogActionOpenCaption = '&打开...'; //&Open...
  cxSFilterControlDialogActionOpenHint = '开放|打开一个现有的过滤器';//Open|Opens an existing filter
  cxSFilterControlDialogActionApplyCaption = '&应用'; //&Apply
  cxSFilterControlDialogActionOkCaption = '确定';//OK
  cxSFilterControlDialogActionCancelCaption = '取消';//Cancel
  cxSFilterControlDialogFileExt = 'flt';
  cxSFilterControlDialogFileFilter = 'Filters (*.flt)|*.flt';

implementation

uses
  dxCore;

procedure AddExpressFilterControlResourceStringNames(AProduct: TdxProductResourceStrings);

  procedure InternalAdd(const AResourceStringName: string; AAdress: Pointer);
  begin
    AProduct.Add(AResourceStringName, AAdress);
  end;

begin
  InternalAdd('cxSFilterBoolOperatorAnd', @cxSFilterBoolOperatorAnd);
  InternalAdd('cxSFilterBoolOperatorOr', @cxSFilterBoolOperatorOr);
  InternalAdd('cxSFilterBoolOperatorNotAnd', @cxSFilterBoolOperatorNotAnd);
  InternalAdd('cxSFilterBoolOperatorNotOr', @cxSFilterBoolOperatorNotOr);
  InternalAdd('cxSFilterRootButtonCaption', @cxSFilterRootButtonCaption);
  InternalAdd('cxSFilterAddCondition', @cxSFilterAddCondition);
  InternalAdd('cxSFilterAddGroup', @cxSFilterAddGroup);
  InternalAdd('cxSFilterRemoveRow', @cxSFilterRemoveRow);
  InternalAdd('cxSFilterClearAll', @cxSFilterClearAll);
  InternalAdd('cxSFilterFooterAddCondition', @cxSFilterFooterAddCondition);
  InternalAdd('cxSFilterGroupCaption', @cxSFilterGroupCaption);
  InternalAdd('cxSFilterRootGroupCaption', @cxSFilterRootGroupCaption);
  InternalAdd('cxSFilterControlNullString', @cxSFilterControlNullString);
  InternalAdd('cxSFilterErrorBuilding', @cxSFilterErrorBuilding);
  InternalAdd('cxSFilterDialogCaption', @cxSFilterDialogCaption);
  InternalAdd('cxSFilterDialogInvalidValue', @cxSFilterDialogInvalidValue);
  InternalAdd('cxSFilterDialogUse', @cxSFilterDialogUse);
  InternalAdd('cxSFilterDialogSingleCharacter', @cxSFilterDialogSingleCharacter);
  InternalAdd('cxSFilterDialogCharactersSeries', @cxSFilterDialogCharactersSeries);
  InternalAdd('cxSFilterDialogOperationAnd', @cxSFilterDialogOperationAnd);
  InternalAdd('cxSFilterDialogOperationOr', @cxSFilterDialogOperationOr);
  InternalAdd('cxSFilterDialogRows', @cxSFilterDialogRows);
  InternalAdd('cxSFilterControlDialogCaption', @cxSFilterControlDialogCaption);
  InternalAdd('cxSFilterControlDialogNewFile', @cxSFilterControlDialogNewFile);
  InternalAdd('cxSFilterControlDialogOpenDialogCaption', @cxSFilterControlDialogOpenDialogCaption);
  InternalAdd('cxSFilterControlDialogSaveDialogCaption', @cxSFilterControlDialogSaveDialogCaption);
  InternalAdd('cxSFilterControlDialogActionSaveCaption', @cxSFilterControlDialogActionSaveCaption);
  InternalAdd('cxSFilterControlDialogActionSaveHint', @cxSFilterControlDialogActionSaveHint);
  InternalAdd('cxSFilterControlDialogActionOpenCaption', @cxSFilterControlDialogActionOpenCaption);
  InternalAdd('cxSFilterControlDialogActionOpenHint', @cxSFilterControlDialogActionOpenHint);
  InternalAdd('cxSFilterControlDialogActionApplyCaption', @cxSFilterControlDialogActionApplyCaption);
  InternalAdd('cxSFilterControlDialogActionOkCaption', @cxSFilterControlDialogActionOkCaption);
  InternalAdd('cxSFilterControlDialogActionCancelCaption', @cxSFilterControlDialogActionCancelCaption);
  InternalAdd('cxSFilterControlDialogFileExt', @cxSFilterControlDialogFileExt);
  InternalAdd('cxSFilterControlDialogFileFilter', @cxSFilterControlDialogFileFilter);
end;

initialization
  dxResourceStringsRepository.RegisterProduct('ExpressFilterControl', @AddExpressFilterControlResourceStringNames);

finalization
  dxResourceStringsRepository.UnRegisterProduct('ExpressFilterControl');

end.

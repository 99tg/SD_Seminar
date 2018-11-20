tableextension 50100 "CSD ResourceExt" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()

            begin
                TestField("Unit Cost");
            end;
        }
        modify("Type")
        {
            OptionCaption = 'Instruction, Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal, External';

        }

        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Maximum Particpants';

        }

        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quanity Per Day';
        }
    }

    var
        myInt: Integer;
}
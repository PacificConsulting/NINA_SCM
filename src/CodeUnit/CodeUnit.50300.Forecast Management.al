codeunit 50300 "Forecast Management"
{
    trigger OnRun()
    begin

    end;

    procedure CreateSalesForecastEntry(MateForcast: Record 50300)
    var
        saleFor: Record 50301;
    begin
        saleFor.Init();
        saleFor."Document No." := MateForcast."Work Order No.";
        saleFor."Forcast Date" := MateForcast."Forcast Date";
        saleFor."Line No." := MateForcast."Line No.";
        saleFor."Site Name" := MateForcast."Site Name";
        saleFor."GM Code" := MateForcast."GM Code";
        saleFor."Description 2" := MateForcast."Description 2";
        saleFor.Validate(Quantity, MateForcast."Forcast Quantity 1");
        saleFor.Validate(UOM, MateForcast."Unit of Measure");
        saleFor.Validate("Unit Price", MateForcast."Unit Price excl. vat");
        //saleFor.Validate("Final Qty Freeze",MateForcast);
        //saleFor."Sales Forecast Material Adv" := MateForcast.sal
        //saleFor."New Reset Date" := MateForcast;
        //saleFor."New Reset Quantity" := MateForcast.;
        saleFor.Insert();
    end;

    procedure CreateMatrialForDetEntry(MateForcast: Record 50300)
    var
        materialForcastDetails: Record 50302;
    begin

    end;

}
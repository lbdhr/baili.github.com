using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
///PreliminarySurvey 的摘要说明
/// </summary>
public class PreliminarySurvey
{
	public PreliminarySurvey()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    private string userName;

    public string UserName
    {
        get { return userName; }
        set { userName = value; }
    }

    private string totalPeople;

    public string TotalPeople
    {
        get { return totalPeople; }
        set { totalPeople = value; }
    }

    private string above6People;

    public string Above6People
    {
        get { return above6People; }
        set { above6People = value; }
    }

    private string tempPeople;

    public string TempPeople
    {
        get { return tempPeople; }
        set { tempPeople = value; }
    }

    private string privateIncome;

    public string PrivateIncome
    {
        get { return privateIncome; }
        set { privateIncome = value; }
    }

    private string familyIncome;

    public string FamilyIncome
    {
        get { return familyIncome; }
        set { familyIncome = value; }
    }

    private string bicycle;

    public string Bicycle
    {
        get { return bicycle; }
        set { bicycle = value; }
    }

    private string electrCycle;

    public string ElectrCycle
    {
        get { return electrCycle; }
        set { electrCycle = value; }
    }

    private string otherVehicle;

    public string OtherVehicle
    {
        get { return otherVehicle; }
        set { otherVehicle = value; }
    }

    private string privateCars;

    public string PrivateCars
    {
        get { return privateCars; }
        set { privateCars = value; }
    }

    private string triCycles;

    public string TriCycles
    {
        get { return triCycles; }
        set { triCycles = value; }
    }

    private string motorCycle;

    public string MotorCycle
    {
        get { return motorCycle; }
        set { motorCycle = value; }
    }
}
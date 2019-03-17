using System;

/// <summary>
///AddLink 的摘要说明
/// </summary>
public class GPSPoints
{
    public GPSPoints()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    private int id;

    public int Id
    {
        get { return id; }
        set { id = value; }
    }

    private double longitude;

    public double Longitude
    {
        get { return longitude; }
        set { longitude = value; }
    }

    private double latitude;

    public double Latitude
    {
        get { return latitude; }
        set { latitude = value; }
    }

}

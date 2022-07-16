abstract class PreferenceCoreRepoContract{
     Future<String> getString(String key);
     setString(String key,String val);   
     Future<double> getDouble(String key);
     setDouble(String key,double val);
     Future<int> getInt(String key);
     setInt(String key,int val);
     Future<bool> getBool(String key);
     setBool(String key,bool val);         
  }
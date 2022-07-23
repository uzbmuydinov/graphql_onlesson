class QueryMutation {
  String userList(int page) {
    return """
    query {
    users{
        id
        name
        rocket
        twitter
    }
}""";
  }

  String insertUser(String name, String rocket, String twitter){
    return """ 
    mutation{

    insert_users(objects:{
        name:"$name",
        rocket: "$rocket",
        twitter: "$twitter"
        
    }){
        affected_rows
    }
    """;
  }
}

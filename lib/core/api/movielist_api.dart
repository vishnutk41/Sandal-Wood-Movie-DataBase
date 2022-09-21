import 'package:http/http.dart' as http;

import '../model/model.dart';

Future< MovieList> apicall() async {
    
   var response = await http.post(Uri.parse("https://hoblist.com/api/movieList"),
        body: {
          "category": "movies",
          "language": "kannada",
          "genre": "all",
          "sort": "voting"
        });





    // print(response.body);

    if (response.statusCode == 200) {
      // print(response.body);
      return movieListFromJson(response.body);
      
      // setState(() {
        
      // });
    } 
    // print(movieListFromJson(response.body));
    return movieListFromJson(response.body) ;
    
  }
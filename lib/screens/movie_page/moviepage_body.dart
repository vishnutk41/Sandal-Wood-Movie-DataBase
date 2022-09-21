// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


import '../../core/api/movielist_api.dart';
import '../votearea.dart/votearea.dart';
import '/utilities/constants.dart';
import '../../core/model/model.dart';

String? stringResponse;

class MoviePageBody extends StatefulWidget {
  const MoviePageBody({Key? key}) : super(key: key);

  @override
  State<MoviePageBody> createState() => _MoviePageBodyState();
}

class _MoviePageBodyState extends State<MoviePageBody> {
  MovieList? movieList;   



  
  

  @override
  void initState()  {
   getMovieList();
    super.initState();
  }

  void getMovieList() async{

    movieList= await apicall();
    // print(movieList);
    setState(() {
      
    });
  }

  @override
  
  Widget build(BuildContext context) {
  //  print(movieList);
   
     return movieList == null? 

    
    Center(child: CircularProgressIndicator()):
    ListView.builder(itemBuilder: (context, index) {
      return SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      VoteArea(),
                     SizedBox(width: 5,),
                      Expanded(flex: 1,
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network(
                            movieList!.result![index].poster.toString(),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(flex:3 ,
                        child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        movieList == null
                            ? CircularProgressIndicator()
                            : Text(
                                movieList!.result![index].title
                                    .toString(),
                                style: kMovieTitleTextStyle,
                              ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 5, 0),
                              child: Text(
                                'Genre:',
                                style: kGenereTextStyle,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            movieList == null
                                ? CircularProgressIndicator()
                                : Text(
                                    movieList!.result![index].genre
                                        .toString(),
                                    style: kGenereNameTextStyle,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 5, 0),
                                child: Text(
                                  'Director:',
                                  style: kGenereTextStyle,
                                ),
                                // here
                              ),
                              movieList == null
                                  ? CircularProgressIndicator()
                                  : Text(
                                      movieList!.result![index].director
                                          .toString(),
                                      style: kGenereNameTextStyle,
                                    ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 5, 0),
                                child: Text(
                                  'starring:',
                                  style: kGenereTextStyle,
                                ),
                                // here
                              ),
                              movieList == null
                                  ? CircularProgressIndicator()
                                  : Flexible(
                                      child: Text(
                                        movieList!.result![index].stars
                                            .toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: kGenereNameTextStyle,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              movieList == null
                                  ? CircularProgressIndicator()
                                  : Text(
                                      movieList!.result![index].pageViews
                                          .toString(),
                                      style: kViewsVotesTextStyle,
                                    ),
                              Text(
                                ' Views |',
                                style: kViewsVotesTextStyle,
                              ),
                              Text(
                                'Voted By ',
                                style: kViewsVotesTextStyle,
                              ),
                              movieList == null
                                  ? CircularProgressIndicator()
                                  : Text(
                                      movieList!.result![index].totalVoted
                                          .toString(),
                                      style: kViewsVotesTextStyle,
                                    ),
                              Text(
                                ' People',
                                style: kViewsVotesTextStyle,
                              ),
                            ],
                          ),
                        ),
                        ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

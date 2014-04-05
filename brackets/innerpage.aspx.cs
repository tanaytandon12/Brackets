using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class innerpage : System.Web.UI.Page
{
    code cd;
    connect con;
    string sql, question, id;
    int val, loc, level, city_no, loc_no, city, val_loc, flag, loc_id, token1, attempt, play, points, storyi = 0;
    string[] brstory = { "Good job, the bomb was defused but Capone has set some more bombs in the city and we can only wish you luck in your endeavors", "It was a close call but you need to find all of the bombs in the city to prevent civilian casuality", "That bomb was a difficult one to diffuse. We have got intel that Capone has stocked bioweapons in the next location.", "That was a close call, but our agents were able successful. You must focus on the next location now.", "No time to wait, there are still bombs to find in this city.", "Ahh, that was tricky one. But our job is to find all the bombs and we have many more to find.", "Your work has been helpful in tracking down Capone, keep up the work", "Your efficient work has saved many human lives but yet there are more bombs to find.", "Devils like Capone hardly stop and so our work has hardly ended, Find the next location in this city ASAP" };


    protected void Page_Load(object sender, EventArgs e)
    {

        //code to prevent multi click on a button
        token.Attributes.Add("onclick", " this.disabled = true; " + ClientScript.GetPostBackEventReference(token, null) + ";");
        Button1.Attributes.Add("onclick", " this.disabled = true; " + ClientScript.GetPostBackEventReference(Button1, null) + ";");

        cd = new code();

        if (Session["id"] == null)
        {
            Response.Redirect("Home.aspx");
        }

        id = Session["id"].ToString();

        sql = "select * from player where id = '" + id + "'";
        con = new connect(sql);


        val = cd.getCityId(id);//logic requirement


        level = Int32.Parse(con.ds.Tables[0].Rows[0]["level"].ToString());//get the level

        city_no = Int32.Parse(con.ds.Tables[0].Rows[0]["city_found"].ToString());//get the number of cities found out


        loc_no = Int32.Parse(con.ds.Tables[0].Rows[0]["loc_found"].ToString());//get the number of locations found out in a city

        attempt = Int32.Parse(con.ds.Tables[0].Rows[0]["attempts"].ToString());//get number of unpenalized attempts

        points = Int32.Parse(con.ds.Tables[0].Rows[0]["points"].ToString());//get the points

        Random rand = new Random((int)DateTime.Now.Ticks);

        storyi = rand.Next(0, 8);
        if (level % 5 != 1)
        {

            storyarea.Text = brstory[storyi];



        }



        if (level == 0)
        {
            storyarea.Text = "Intelligence reports suggest the criminal mastermind Tom Capone is planning something big . CIA has hacked into Capone’s system and found out that he wants to cause massive havoc and chaos. The first bomb is located in one of the major cities of India. If you are finding it too difficult then use the bypass to progress to next location.";
        }
        else if (level == 5)
        {
            storyarea.Text = "Although it was tough but that city is safe for now, the bombs in the city have been successfully diffused. But this is only the starting Capone and his agents have planted many more bombs that must be diffused else thousands of innocent lives will be lost.If you are finding it too difficult then use the bypass to progress to next location.";
        }
        else if (level == 10)
        {
            storyarea.Text = "Your presence has been detected and Capone is doing his level best to stop his plans from failing. He has now decided to cause further destruction. Intelligence suggests Capone plans on bombing a meeting to be held by the Indian Prime Minister. Everything is at stake.";
        }
        else if (level == 15)
        {
            storyarea.Text = "It was a close call well done but Capone will not rest till he achieves his target. His plans are falling apart but Capone is a very intelligent and dangerous enemy.  He is reeling from his defeats at your hands but he is also plotting a major strike which will put his plans back on track.";
        }
        else if (level == 20)
        {
            storyarea.Text = "It seems that Capone’s plans regarding India have been foiled. He has been wounded badly but he has not admitted defeat. Intelligence Reports tell that he has fled India and is allegedly heading west to the Middle Eastern countries. The writing is on the wall";
        }
        else if (level == 25)
        {
            storyarea.Text = "Capone was defeated again but he is back to his old tactics (When will that idiot learn). His numerous attempts have been thwarted but he will not stop. His modus operandi is the same his agents have planted the bombs at various unknown locations the name of the locations must be decrypted in time.";
        }
        else if (level == 30)
        {
            storyarea.Text = "Capone it seems has learned newer tricks he has kidnapped many famous scientists and plans on forcing them into making a nuclear weapon for him which he will then sell in the international black market.";
        }
        else if (level == 35)
        {
            storyarea.Text = "Capone is  planning to target a conference of the Israeli, Iranian, Turkish and Iraqi heads of sates. This conference is crucial to peace in the Middle East. If Capone succeeds then all the years of relentless efforts made for peace will be wasted. ";
        }

        else if (level == 40)
        {
            storyarea.Text = "Capone is a relentless criminal who is not ready to stop yet. Capone has shifted his base to china and is trying to bring its rising economy to grounds. ";
        }
        else if (level == 45)
        {
            storyarea.Text = "That city was crucial to china and the government is happy with your work. But we are still facing challenges as the mastermind has many friends in china who are eager to execute his plans. We need to find the next city so that we can save china. ";
        }
        else if (level == 50)
        {
            storyarea.Text = "China is one of the biggest countries with largest population and we need to continue our work as fast as possible. there are yet more bombs in China.";
        }

        else if (level == 55)
        {
            storyarea.Text = "Only one more city is left in china and it is very crucial to it. Will we be able to safeguard china's interests or give up to Capone's master plan?";
        }
        else if (level == 60)
        {
            storyarea.Text = "China is safe for now but Capone is moving fast. His next target is Indian subcontinent. Although we have already diffused all the bombs in India but its neighbours are not safe. Capone is getting help from the terrorist groups in these countries too. We need to go deeper this time.";
        }
        else if (level == 65)
        {
            storyarea.Text = "Capone merely escaped this time. We are very close to his trail. Although we were able get a hold of his past crimes but we still have no clue about where he might strike next. But the biggest question is when will he stop?";
        }
        else if (level == 70)
        {
            storyarea.Text = "Capone is a mastermind. The last location that you told us didn't had any bombs. Still we shouldn't rest as we are not yet sure when we would be able to catch him. Also we have recieved intel that he has some internal ties with one of the insiders. We need to be more secretive in our approach.";
        }
        else if (level == 75)
        {
            storyarea.Text = "Capone bluffed once again. There were no bombs in the previous location. Although another agent had found that bomb's location in time and no one was harmed. Capone is playing tricks on us. We will have to be more vigilant in the future.";
        }
        else if (level == 80)
        {
            storyarea.Text = "Your excellent work in the Indian subcontinent has helped to save millions of innocent lives. Miffed by your playing spoil sport in his plans, Capone plans to target non-suspecting nations. Intelligence sources have revealed that Capone was last spotted in Africa. Knowing his reputation, you must act quickly to prevent him from wrecking any more havoc.";
        }
        else if (level == 85)
        {
            storyarea.Text = "The presidential convoy meetings are taking place in all major cities today. We have received a few tip calls from unidentified sources that various sites in the tour list have been rigged. It’s your job to secure the locations that the convoy plans to visit. The mission is to neutralize any surprises that Capone has in store.";
        }
        else if (level == 90)
        {
            storyarea.Text = "Your troubles seem to be increasing! Capone has managed to secure some aides from local gangs in next country. This association must be nipped in the bud, or else it can grow to exponential limits. Your mission is to bust the meetings of Capone’s associates with the local gangs. Find out their meeting spots before the deal’s done.";
        }
        else if (level == 95)
        {
            storyarea.Text = "Congratulations on busting Capone’s men. They have proved helpful in ascertaining his further moves. On tough interrogation they have informed that Capone has changed his plans from arson to espionage and coupe attacks.";
        }
        else if (level == 100)
        {
            storyarea.Text = "That city was crucial to china and the government is happy with your work. But we are still facing challenges as the mastermind has many friends in china who are eager to execute his plans. We need to find the next city so that we can save china.";
        }
        else if (level == 105)
        {
            storyarea.Text = "Capone is set on destroying all of Europe and we dont know where he will attack next.";
        }
        else if (level == 110)
        {
            storyarea.Text = "We had assigned several of aur agents in tracking down the identity of Tom Capone and they are very confident that he was involved in many crimes previously too. We have got good leads on tracking him down. Rest assured his end is near";
        }
        else if (level == 115)
        {
            storyarea.Text = "Capone played a major role in the Gulf War of 90s and later founded some terrorist camps in Middle East.Capones's hints are not makin any sense now. We will have to be thorough in our research and go for <b>Hit and Trial</b> approach. ";
        }
        else if (level == 120)
        {
            storyarea.Text = "The clues for next location of Capone are getting weirder and weirder from here. We should quickly design an <b>alogrithm</b> to track down him more efficiently as the clues for locations are very vague.All we know now is that he is hiding somewhere in <b>Eastern Europe</b>";
        }
        else if (level == 125)
        {
            storyarea.Text = "Some of our agents have tracked down an <b>alogrithm</b>  to track down Capones locations and are moving fast. We are also confident now that Tom Capone is among the top order of Al-Qayda. Also our search parties were unable to look for him in the previous locations. ";
        }
        else if (level == 130)
        {
            storyarea.Text = "This is to inform all the agents workin on tracking down Al Capone. We have got highly secret intel that Capone was a pseudonym used by <b>Osama Bin Laden</b> during the Gulf War. But Osama was killed in an operation in 2012 by American Army in Pakistan. We will update you on his identity as we uncover more details of him";
        }
        else if (level == 135)
        {
            storyarea.Text = "Our intel on Capones real identity was true. He is no one else than <b>Osama Bin Laden</b>. He marginally escaped and replaced his body double to fool that he was dead. The clues to the next city will bring us to his home. He must be in the next city";
        }
        else if (level == 140)
        {
            storyarea.Text = "We have searched for Capone in all the important locations in Eastern Europe but he escaped us marginally twice. We are now sure that he is somewhere in Middle East or South East.We are placing our bets on Pakistan and Afghanistan.We will update you as soon as we get more intel.";
        }
        else if (level == 145)
        {
            storyarea.Text = "We busted some more of Osamas bases in Afghanistan and on tough interrogation they have provided us with some of his possible locations. ";
        }
        else if (level == 150)
        {
            storyarea.Text = "All we know right now is that Osama is definitely in either Pakistan or Afghanistan.We were only able to track him down to a radius of 200 miles. We are doing our best. Till then Good Luck.";
        }
        else if (level == 155)
        {
            storyarea.Text = "We had to go round to track down Osama but it was not in vain.This is the last stand.He has got nowhere to turn. Its only a matter of time before he is tracked down.";

        }
        else if (level == 156)
        {
            storyarea.Text = "Interpol has supplied us with few of their finest men. We are also very sure that hes is in this city.";

        }
        else if (level == 157)
        {
            storyarea.Text = "The last location proved to be a trap and we lost a few of our top order men. The presence of heavy ammunition and weapons proves that we are very close to his hideout.Though his men managed to flee, they left behind their dossiers in the hurry. Top notch surveillance teams have managed to identify his  current location and through suspicious movement of equipments we have pinpointed him to an abandoned building.";

        }
        else if (level == 158)
        {
            storyarea.Text = "We had to go round to track down Osama but it was not in vain.This is the last stand.He has got nowhere to turn. Its only a matter of time before he is tracked down.This is going to be the last nail in his coffin. Our success or failure depends on this. Give your best as this will be the last face-off";

        }
        else if (level == 159)
        {
            Response.Redirect("Osama.html");

        }
        else
        {
            
        }
        if (city_no < ((level / 5) + 1))
        {

            //get the current city
            city = val + city_no;
            if (city > (((city_no / 4) + 1) * 4))   // check if current city exceeds difficulty limit
            {
                city = city - 4;
            }

            //    Label2.Text = con.ds.Tables[0].Rows[0]["level"].ToString();


            //get the object for city
            sql = "select * from ques_city where c_id = " + city;
            con = new connect(sql);

            //get the city latitude and longitude
            string question1 = con.ds.Tables[0].Rows[0]["city_latitude"].ToString();
            string question2 = con.ds.Tables[0].Rows[0]["city_longitude"].ToString();
            string ans = con.ds.Tables[0].Rows[0]["city_name"].ToString();
            string head = "<p style='font-size:26px; text-align:center;'><b>City Code</b></p>";

            //set the latitude longitude value in textbox
            Label2.Text = head + "<b>LATITUDE: </b><p>" + question1 + "<p/><br/><b>LONGITUDE: </b><p>" + question2 + "</p>";

        }
        else
        {
            //get the current city
            city = val + city_no - 1;

            if (city > ((((city_no - 1) / 4) + 1) * 4))
            {
                city = city - 4;
            }

            //get the location in the city
            val_loc = cd.getLocId(id);
            loc_no = (loc_no % 4) + val_loc;
            if (loc_no >= 8)
            {
                loc_no = loc_no - 8;
            }

            //get all the locations             
            sql = "select * from ques_loc where loc_city = " + city;
            con = new connect(sql);

            //get the id of the location
            loc_id = Int32.Parse(con.ds.Tables[0].Rows[loc_no]["id"].ToString());

            //get the question
            question = con.ds.Tables[0].Rows[loc_no]["loc_ques"].ToString();

            //the answer it will be removed later
            string ans = con.ds.Tables[0].Rows[loc_no]["loc_ans"].ToString();

            //set location value in textbox
            String head = "<p style='font-size:26px; text-align:center;'><b>Location Code</b></p>";
            Label2.Text = head + question + "<br/>";

            //code to hide token button

            //sql = "select token from player where id = '" + id + "'";
            //con = new connect(sql);
            //token1 = Int32.Parse(con.ds.Tables[0].Rows[0]["token"].ToString());
            //if (token1 == 0)
            //{
            //    token.Visible = false;
            //    tokenlabel.Visible = false;
            //}

            //setting content of profile
        }
        sql = "select token from player where id = '" + id + "'";
        con = new connect(sql);
        token1 = Int32.Parse(con.ds.Tables[0].Rows[0]["token"].ToString());
        if (token1 == 0)
        {
            token.Visible = false;
            tokenlabel.Visible = false;
        }

        sql = "select user.name, user.clg, player.points from user inner join player on user.id=player.id and user.id='" + id + "'";
        con = new connect(sql);
        string name = con.ds.Tables[0].Rows[0]["name"].ToString();
        string college = con.ds.Tables[0].Rows[0]["clg"].ToString();
        points = Int32.Parse(con.ds.Tables[0].Rows[0]["points"].ToString());

        string profile = "";
        profile += "<table><tr><td><div id='pro_back'></div><br/> ";
        profile += "</br><div id='profile_bar'><b>Name:</b>&nbsp;" + name + "</td>";
        profile += "<div id='college'><b>College:</b>&nbsp;" + college + "</div>";
        profile += "<div id='level'><b>Level:</b>&nbsp;" + level + "</div>";
        profile += "<div id='points'><b>Points:</b>&nbsp;" + points + "</div>";
        profile += "<div id='remaining_tokens'><b>Remaining Bypasses:</b>&nbsp;" + token1 + "</div>";
        profile += "<div id='remainig_attempt'>";
        if (level > 20)
        {
            profile += "<b>Remaining Attempts</b>:" + attempt;
        }
        profile += "</div></div>";
        bottombar.InnerHtml = profile;
        // bottombar.InnerHtml = "<a href='#' id='pro_back'>back</a><img src='images/profile.jpg'style='height:70px; width:70px;margin-top:20px;'/><br/><p style='color:'>name:</p> " + name + " <br/>" + college + "<br/>" + level + "<br/>" + points + "<br/>" + token1 + "";
    }
    protected void submitButton_Click(object sender, EventArgs e)
    {
        //get value from textbox
        string answer = TextBox1.Text.ToLower();
        if (answer.Trim() != null)
        {

            //get the value of flag
            sql = "select flag from player where id = '" + id + "'";
            con = new connect(sql);
            flag = Int32.Parse(con.ds.Tables[0].Rows[0]["flag"].ToString());

            if (city_no < ((level / 5) + 1))
            {
                //get the city name          
                sql = "select * from ques_city where c_id = " + city;
                con = new connect(sql);
                string right_answer = (con.ds.Tables[0].Rows[0]["city_name"].ToString()).ToLower().Trim();

                //check the answer 
                if (answer == right_answer)
                {


                    // check if flag == 1
                    if (flag == 0)
                    {
                        //update number of players who have found the city
                        sql = "update ques_city set city_crossed = city_crossed+1 where c_id = " + city;
                        con = new connect(sql);

                        //if answer is correct update the city_found
                        sql = "update player set city_found = city_found+1, level = level+1,points=points+50,attempts=3 where id = '" + id + "'";
                        con = new connect(sql);

                    }
                    else
                    {
                        //update players and subtract from error
                        sql = "update ques_city set city_crossed = city_crossed +1 , city_error = city_error -1 where c_id = " + city;
                        con = new connect(sql);

                        //if answer is correct update the city_found
                        sql = "update player set city_found = city_found+1, level = level+1, flag = 0 ,attempt=3 where id = '" + id + "'";
                        con = new connect(sql);

                    }

                    sql = "select id from player where level >= (select level from player where id = '" + id + "')";
                    con = new connect(sql);
                    play = con.ds.Tables[0].Rows.Count;
                    sql = "update player set play = '" + (play - 1) + "' where id = '" + id + "'";
                    con = new connect(sql);

                    //redirect the page
                    Response.Redirect("Innerpage.aspx");


                }
                else
                {
                    if (level > 20)
                    {
                        if (attempt == 0)
                        {
                            if (points >= 10)
                            {
                                sql = "update player set points=points-10 where id = '" + id + "'";
                                con = new connect(sql);
                            }
                        }
                        else
                        {
                            sql = "update player set attempts=attempts-1 where id='" + id + "'";
                            con = new connect(sql);
                        }
                    }
                    //redirect the page
                    Label3.Text = "Wrong Answer"; Label3.Visible = true;
                    //Response.Write("<script>alert('wrong answer');</script>");
                    //Response.Redirect("Innerpage.aspx");
                }
            }

            else
            {

                //select all the locations
                sql = "select * from ques_loc where loc_city = " + city;
                con = new connect(sql);

                string right_answer = (con.ds.Tables[0].Rows[loc_no]["loc_ans"].ToString()).ToLower().Trim();

                //select the location
                if (right_answer == answer)
                {
                    //get the number of locations player has already discoverd in the city
                    sql = "select loc_found from player where id = '" + id + "'";
                    con = new connect(sql);

                    loc = Int32.Parse(con.ds.Tables[0].Rows[0]["loc_found"].ToString());

                    //check if flag == 1
                    if (flag == 1)
                    {
                        //update the location table
                        sql = "update ques_loc set loc_crossed = loc_crossed + 1, loc_error = loc_error -1 where id = " + loc_id;
                        con = new connect(sql);

                        //update the user details
                        sql = "update player set flag = 0 where id = '" + id + "'";
                        con = new connect(sql);
                    }
                    else
                    {
                        //update the location table
                        sql = "update ques_loc set loc_crossed = loc_crossed +1 where id = " + loc_id;
                        con = new connect(sql);
                    }

                    // check the location of the player
                    if (loc == 3)
                    {
                        // change level and number of locations found
                        sql = "update player set level = level+1 , loc_found = 0 , flag = 0,points=points+25,attempts=3 where id = '" + id + "'";
                        con = new connect(sql);
                    }

                    else
                    {
                        //increase the locations found in a city
                        sql = "update player set level = level + 1 , loc_found = loc_found+1, flag = 0,points=points+25,attempts=3 where id = '" + id + "'";
                        con = new connect(sql);
                    }

                    sql = "select id from player where level >= (select level from player where id = '" + id + "')";
                    con = new connect(sql);
                    play = Int32.Parse(con.ds.Tables[0].Rows.Count.ToString());
                    sql = "update player set play = '" + (play - 1) + "' where id = '" + id + "'";
                    con = new connect(sql);


                    //redirect the page
                    Response.Redirect("Innerpage.aspx");

                }
                else
                {
                    if (level > 20)
                    {
                        if (attempt == 0)
                        {
                            if (points >= 5)
                            {
                                sql = "update player set points=points-5 where id = '" + id + "'";
                                con = new connect(sql);
                            }
                        }
                        else
                        {
                            sql = "update player set attempts=attempts-1 where id='" + id + "'";
                            con = new connect(sql);
                        }
                    }
                    //redirect the page
                    Label3.Text = "Wrong Answer"; Label3.Visible = true;
                    //Response.Write("<script type='text/javascript'>alert('wrong answer');</script>");
                    //Response.Redirect("Innerpage.aspx");
                }
            }
        }

    }


    //protected void TokenUsed(object sender, EventArgs e)
    //{
    //sql = "select token from player where id = '" + id + "'";
    //con = new connect(sql);
    //token1 = Int32.Parse(con.ds.Tables[0].Rows[0]["token"].ToString());

    //if (token1 > 0)
    //{
    //    if (city_no < ((level / 5) + 1))
    //    {
    //        sql = "update player set city_found=city_found+1,level=level+1,flag=0,token=token-1,points=points+50 where id='" + id + "'";
    //        con = new connect(sql);
    //    }
    //    else
    //    {
    //        if (loc == 3)
    //        {
    //            // change level and number of locations found
    //            sql = "update player set level = level+1 , loc_found = 0 , flag = 0,token=token-1,points=points+25 where id = '" + id + "'";
    //            con = new connect(sql);
    //        }

    //        else
    //        {
    //            //increase the locations found in a city
    //            sql = "update player set level = level + 1 , loc_found = loc_found+1, flag = 0,token=token-1,points=points+25 where id = '" + id + "'";
    //            con = new connect(sql);
    //        }

    //    }

    //    Response.Redirect("innerpage.aspx");


    //}
    //else
    //{
    //    //if (token1 == 1)
    //    //{
    //    //    Response.Write("<script type='text/javascript'>alert('It seems that was your last token /n Now token says /n Bye Bye, Alvida ,shaaba khair');</script>");
    //    //}
    //}
    //}

    protected void logoutButton_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }
    protected void logoutButton_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script type='text/javascript'>alert('used all of them');</script>");
    }
    protected void TokenUsed(object sender, ImageClickEventArgs e)
    {
        sql = "select token from player where id = '" + id + "'";
        con = new connect(sql);
        token1 = Int32.Parse(con.ds.Tables[0].Rows[0]["token"].ToString());

        if (token1 > 0)
        {
            if (city_no < ((level / 5) + 1))
            {
                sql = "update player set city_found=city_found+1,level=level+1,flag=0,token=token-1,points=points+50 where id='" + id + "'";
                con = new connect(sql);
            }
            else
            {
                if (loc == 3)
                {
                    // change level and number of locations found
                    sql = "update player set level = level+1 , loc_found = 0 , flag = 0,token=token-1,points=points+25 where id = '" + id + "'";
                    con = new connect(sql);
                }

                else
                {
                    //increase the locations found in a city
                    sql = "update player set level = level + 1 , loc_found = loc_found+1, flag = 0,token=token-1,points=points+25 where id = '" + id + "'";
                    con = new connect(sql);
                }

            }

            Response.Redirect("innerpage.aspx");


        }
        else
        {
            //if (token1 == 1)
            //{
            //    Response.Write("<script type='text/javascript'>alert('It seems that was your last token /n Now token says /n Bye Bye, Alvida ,shaaba khair');</script>");
            //}
        }
    }
}

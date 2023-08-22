const String htmlDoc = """
<!DOCTYPE html>
<html>
{head}
{body}
</html>
""";
const String head = """
 <head>

  <meta charset="utf-8"/>
<title>Exported Data</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <link href="{style}" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/styles/default.min.css">
  <script src="{script}" type="text/javascript"></script>
  {headWhite}
 </head>
 """;
const String body = """
 <body onload="CheckLocation();">

  <div class="page_wrap">

   <div class="page_header">

    <div class="content">

     <div class="text bold">
Exported Data
     </div>

    </div>

   </div>

   <div class="page_body">

    <div class="personal_info clearfix">

     <div class="pull_right userpic_wrap">

      <a class="userpic_link" href="lists/profile_pictures.html">

       <img class="userpic" src="{userPic}" style="width: 90px; height: 90px"/>

      </a>

     </div>

     <div class="rows names">

      <div class="row">

       <div class="label details">
First name
       </div>

       <div class="value bold">
{firstName}
       </div>

      </div>

     </div>

     <div class="rows info">

      <div class="row">

       <div class="label details">
Phone number
       </div>

       <div class="value bold">
{phoneNumber}
       </div>

      </div>

      <div class="row">

       <div class="label details">
Username
       </div>

       <div class="value bold">
{userName}
       </div>

      </div>

     </div>

     <div class="rows bio">

      <div class="row">

       <div class="label details">
Bio
       </div>

       <div class="value bold">
{bio}
       </div>

      </div>

     </div>

    </div>

    <div class="sections with_divider">

     <a class="section block_link chats" href="lists/chats.html#allow_back">

      <div class="counter details">
{chatsCount}
      </div>

      <div class="label bold">
Chats
      </div>

     </a>

     <a class="section block_link contacts" href="lists/contacts.html#allow_back">

      <div class="counter details">
{contactsCount}
      </div>

      <div class="label bold">
Contacts
      </div>

     </a>

     <a class="section block_link frequent" href="lists/frequent.html#allow_back">

      <div class="counter details">
{frequentCount}
      </div>

      <div class="label bold">
Frequent contacts
      </div>

     </a>

     <a class="section block_link photos" href="lists/profile_pictures.html#allow_back">

      <div class="counter details">
{profilePicCount}
      </div>

      <div class="label bold">
Profile pictures
      </div>

     </a>

     <a class="section block_link stories" href="lists/stories.html#allow_back">

      <div class="counter details">
{storiesCount}
      </div>

      <div class="label bold">
Stories archive
      </div>

     </a>

     <a class="section block_link sessions" href="lists/sessions.html#allow_back">

      <div class="counter details">
{sessionsCount}
      </div>

      <div class="label bold">
Sessions
      </div>

     </a>

     <a class="section block_link other" href="lists/other_data.json#allow_back">

      <div class="counter details">
{otherDataCount}
      </div>

      <div class="label bold">
Other data
      </div>

     </a>

    </div>

    <div class="page_about details with_divider">
{about}
    </div>

   </div>

  </div>

 </body>
""";
const String listPage = """
 <body onload="CheckLocation();">

  <div class="page_wrap">

   <div class="page_header">

    <a class="content block_link" href="../export_results.html" onclick="return GoBack(this)">

     <div class="text bold">
{title}
     </div>

    </a>

   </div>

   <div class="page_body list_page">

    <div class="page_about details">
{details}
    </div>

    <div class="entry_list">
    {rows}
    </div>

   </div>

  </div>

 </body>

""";

const String listRow = """
     <div class="entry clearfix">

      <div class="pull_left userpic_wrap">

       <div class="userpic userpic{picIndex}" style="width: 48px; height: 48px">

        <div class="initials" style="line-height: 48px">
{leading}
        </div>

       </div>

      </div>

      <div class="body">

       <div class="pull_right info details">
{trailing}
       </div>

       <div class="name bold">
{title}
       </div>

       <div class="details_entry details">
{subtitle}
       </div>

      </div>

     </div>
""";

const String selectableListRow = """
     <a class="entry block_link clearfix" href="{targetUrl}#allow_back">

      <div class="pull_left userpic_wrap">

       <div class="userpic userpic{picIndex}" style="width: 48px; height: 48px">

        <div class="initials" style="line-height: 48px">
{leading}
        </div>

       </div>

      </div>

      <div class="body">

       <div class="pull_right info details">
{trailing}
       </div>

       <div class="name bold">
{title} 
       </div>

       <div class="details_entry details">
{subtitle}
       </div>

      </div>

     </a>
""";
const String sessionRow = """
    <div class="entry clearfix">

      <div class="pull_left userpic_wrap">

       <div class="userpic userpic{picIndex}" style="width: 48px; height: 48px">

        <div class="initials" style="line-height: 48px">
{leading}
        </div>

       </div>

      </div>

      <div class="body">

       <div class="name bold">
{title}
       </div>

       <div class="subname bold">
{subname}
       </div>

       <div class="details_entry details">
{ip} – {address}
       </div>

       <div class="details_entry details">
Last active: {lastActive}
       </div>

       <div class="details_entry details">
Created: {created}
       </div>

      </div>

     </div>
""";
const String storyRow = """
     <div class="entry clearfix">

      <div class="pull_left userpic_wrap">

       <img class="story" src="{storyUrl}" style="width: 45px; height: 80px"/>

      </div>

      <div class="body">

       <div class="pull_right info details">
{date}
       </div>

       <div class="name bold">
{name}
       </div>

       <div class="text">
{caption}
       </div>

       <div class="details_entry details">
Saved to Profile
       </div>

       <div class="details_entry details">
Expiring: {expiring}
       </div>

      </div>

     </div>
     """;
const String messagesBody = """
 <body onload="CheckLocation();">

  <div class="page_wrap">

   <div class="page_header">

    <a class="content block_link" href="../../lists/chats.html" onclick="return GoBack(this)">

     <div class="text bold">
{title} 
     </div>

    </a>

   </div>

   <div class="page_body chat_page">

    <div class="history">
    {rows}
        </div>

   </div>

  </div>

 </body>

""";
const String messageTextRow = """
     <div class="message default clearfix" id="message{message_id}">

      <div class="pull_left userpic_wrap">

       <div class="userpic userpic{picIndex}" style="width: 42px; height: 42px">

        <div class="initials" style="line-height: 42px">
{leading}
        </div>

       </div>

      </div>

      <div class="body">

       <div class="pull_right date details" title="{date}">
{hour}
       </div>

{reply}

       <div class="from_name">
{from_name} 
       </div>
{photo}
       <div class="text">
{text}
       </div>

      </div>

     </div>
""";

const String messageService = """
     <div class="message service" id="message-{message_id}">

      <div class="body details">
{body}
      </div>

     </div>
""";
const joinedMessageRow = """
     <div class="message default clearfix joined" id="message{message_id}">

      <div class="body">

       <div class="pull_right date details" title="{date}">
{hour}
       </div>
       {reply}
{photo}
       <div class="text">
{text}
       </div>

      </div>

     </div>""";
const String gifItem = """
       <div class="media_wrap clearfix">

        <a class="animated_wrap clearfix pull_left" href="{video}">

         <div class="video_play_bg">

          <div class="gif_play">
GIF
          </div>

         </div>

         <img class="animated" src="{thumbnail}" style="width: {width}px; height: {height}px"/>

        </a>

       </div
       """;
const String forwardedMessageRow = """
     <div class="message default clearfix" id="message{message_id}">

      <div class="pull_left userpic_wrap">

       <div class="userpic userpic{picIndex}" style="width: 42px; height: 42px">

        <div class="initials" style="line-height: 42px">
{leading}
        </div>

       </div>

      </div>

      <div class="body">

       <div class="pull_right date details" title="{date}">
{hour}
       </div>

       <div class="from_name">
{from_name} 
       </div>

       <div class="pull_left forwarded userpic_wrap">

        <div class="userpic userpic{picIndex}" style="width: 42px; height: 42px">

         <div class="initials" style="line-height: 42px">
{leading2}
         </div>

        </div>

       </div>

       <div class="forwarded body">

        <div class="from_name">
{forwarded_name} <span class="date details" title="{date}"></span>
        </div>

        <div class="text">
{text}
        </div>

       </div>

      </div>

     </div>
""";

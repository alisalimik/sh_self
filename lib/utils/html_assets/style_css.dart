const String styleCss = """
body {
    margin: 0;
    font: 12px/18px 'Vazirmatn','Open Sans',"Lucida Grande","Lucida Sans Unicode",Arial,Helvetica,Verdana,sans-serif;
}
strong {
    font-weight: 700;
}
code, kbd, pre, samp {
    font-family: Menlo,Monaco,Consolas,"Courier New",monospace;
}
code {
    padding: 2px 4px;
    font-size: 90%;
    color: #c7254e;
    background-color: #f9f2f4;
    border-radius: 4px;
}
pre {
    display: block;
    margin: 0;
    line-height: 1.42857143;
    word-break: break-all;
    word-wrap: break-word;
    color: #333;
    background-color: #f5f5f5;
    border-radius: 4px;
    overflow: auto;
    padding: 3px;
    border: 1px solid #eee;
    max-height: none;
    font-size: inherit;
}
.clearfix:after {
    content: " ";
    visibility: hidden;
    display: block;
    height: 0;
    clear: both;
}
.pull_left {
    float: left;
}
.pull_right {
    float: right;
}
.page_wrap {
    background-color: #ffffff;
    color: #000000;
}
.page_wrap a {
    color: #168acd;
    text-decoration: none;
}
.page_wrap a:hover {
    text-decoration: underline;
}
.page_header {
    position: fixed;
    z-index: 10;
    background-color: #ffffff;
    width: 100%;
    border-bottom: 1px solid #e3e6e8;
}
.page_header .content {
    width: 480px;
    margin: 0 auto;
    border-radius: 0 !important;
}
.page_header a.content {
    background-repeat: no-repeat;
    background-position: 24px 21px;
    background-size: 24px 24px;
}
.bold {
    color: #212121;
    font-weight: 700;
}
.details {
    color: #70777b;
}
.page_header .content .text {
    padding: 24px 24px 22px 24px;
    font-size: 22px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.page_header a.content .text {
    padding: 24px 24px 22px 82px;
}
.page_body {
    padding-top: 64px;
    width: 480px;
    margin: 0 auto;
}
.page_about {
    padding: 24px 24px;
}
.with_divider {
    border-top: 1px solid #e3e6e8;
}
.userpic_link {
    display: block;
    text-decoration: none;
}
.userpic_link:hover {
    text-decoration: none;
}
.userpic {
    display: block;
    border-radius: 50%;
    overflow: hidden;
}
.story {
    display: block;
    border-radius: 4px;
    overflow: hidden;
}
.userpic .initials {
    display: block;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
    user-select: none;
}
.color_red,
.userpic1,
.media_call .fill,
.media_file .fill,
.media_live_location .fill {
    background-color: #ff5555;
}
.color_green,
.userpic2,
.media_call.success .fill,
.media_photo .fill {
    background-color: #64bf47;
}
.color_yellow,
.userpic3,
.media_venue .fill {
    background-color: #ffab00;
}
.color_blue,
.userpic4,
.media_audio_file .fill,
.media_voice_message .fill {
    background-color: #4f9cd9;
}
.color_purple,
.userpic5,
.media_game .fill {
    background-color: #9884e8;
}
.color_pink,
.userpic6,
.media_invoice .fill {
    background-color: #e671a5;
}
.color_sea,
.userpic7,
.media_location .fill,
.media_video .fill {
    background-color: #47bcd1;
}
.color_orange,
.userpic8,
.media_contact .fill {
    background-color: #ff8c44;
}
.personal_info {
    padding: 24px;
}
.personal_info .userpic .initials {
    font-size: 30px;
}
.personal_info .rows {
    float: left;
    padding-right: 24px;
}
.personal_info .names {
    width: 164px;
}
.personal_info .info {
    width: 124px;
}
.personal_info .bio {
    width: 400px;
}
.personal_info .row {
    padding-bottom: 16px;
}
a.block_link {
    display: block;
    text-decoration: none !important;
    border-radius: 4px;
}
a.block_link:hover {
    text-decoration: none !important;
    background-color: #f5f7f8;
}
a.expanded {
    padding: 2px 8px;
    margin: -2px -8px;
}
.sections {
    padding: 11px 0;
}
.section {
    height: 48px;
    background-position: 24px 12px;
    background-repeat: no-repeat;
    background-size: 24px 24px;
}
.section .counter {
    float: right;
    padding: 14px 24px 0;
    font-size: 15px;
}
.section .label {
    padding: 15px 0 0 82px;
    font-size: 15px;
}
.list_page .page_about {
    padding: 16px 24px 0;
    font-size: 11px;
}
.list_page .entry_list {
    padding: 16px 0;
}
.list_page .entry {
    padding: 10px 16px;
}
.list_page .entry .userpic .initials {
    font-size: 18px;
}
.list_page .entry .body {
    margin-left: 66px;
}
.list_page .entry .name {
    padding: 4px 0 2px;
    font-size: 14px;
}
.list_page .entry .subname {
    padding-top: 4px;
}
.list_page .entry .details_entry {
    padding-top: 4px;
}
.list_page .entry .info {
    font-size: 11px;
    padding-top: 5px;
}
.history {
    padding: 16px 0;
}
.message {
    margin: 0 -10px;
    transition: background-color 2.0s ease;
}
div.selected {
    background-color: rgba(242,246,250,255);
    transition: background-color 0.5s ease;
}
.service {
    padding: 10px 24px;
}
.service .body {
    text-align: center;
}
.service .userpic_wrap {
    padding-top: 10px;
}
.service .userpic {
    margin: 0 auto;
}
.service .userpic .initials {
    font-size: 24px;
}
.message .userpic .initials {
    font-size: 16px;
}
.default {
    padding: 10px;
}
.default.joined {
    margin-top: -10px;
}
.default .from_name {
    color: #3892db;
    font-weight: 700;
    padding-bottom: 5px;
}
.default .from_name .details {
    font-weight: normal;
}
.default .body {
    margin-left: 60px;
}
.default .text {
    word-wrap: break-word;
    line-height: 150%;
    unicode-bidi: plaintext;
    text-align: start;
}
.default .reply_to,
.default .media_wrap {
    padding-bottom: 5px;
}
.default .media {
    margin: 0 -10px;
    padding: 5px 10px;
}
.default .media .fill,
.default .media .thumb {
    width: 48px;
    height: 48px;
    border-radius: 50%;
}
.default .media .fill {
    background-repeat: no-repeat;
    background-position: 12px 12px;
    background-size: 24px 24px;
}
.default .media .title,
.default .media_poll .question {
    padding-top: 4px;
    font-size: 14px;
}
.default .media .description {
    color: #000000;
    padding-top: 4px;
    font-size: 13px;
}
.default .media .status {
    padding-top: 4px;
    font-size: 13px;
}
.default .video_file_wrap,
.default .animated_wrap {
    position: relative;
}
.default .video_file,
.default .animated,
.default .photo,
.default .sticker {
    display: block;
}
.video_duration {
    background: rgba(0, 0, 0, .4);
    padding: 0px 5px;
    position: absolute;
    z-index: 2;
    border-radius: 2px;
    right: 3px;
    bottom: 3px;
    color: #ffffff;
    font-size: 11px;
}
.video_play_bg {
    background: rgba(0, 0, 0, .4);
    width: 40px;
    height: 40px;
    line-height: 0;
    position: absolute;
    z-index: 2;
    border-radius: 50%;
    overflow: hidden;
    margin: -20px auto 0 -20px;
    top: 50%;
    left: 50%;
    pointer-events: none;
}
.video_play {
    position: absolute;
    display: inline-block;
    top: 50%;
    left: 50%;
    margin-left: -5px;
    margin-top: -9px;
    z-index: 1;
    width: 0;
    height: 0;
    border-style: solid;
    border-width: 9px 0 9px 14px;
    border-color: transparent transparent transparent #fff;
}
.gif_play {
    font-weight: 700;
    color: #FFF;
    display: block;
    line-height: 40px;
    font-size: 13px;
    text-align: center;
}
.pagination {
    text-align: center;
    padding: 20px;
    font-size: 16px;
}

.toast_container {
    position: fixed;
    left: 50%;
    top: 50%;
    opacity: 0;
    transition: opacity 3.0s ease;
}
.toast_body {
    margin: 0 -50%;
    float: left;
    border-radius: 15px;
    padding: 10px 20px;
    background: rgba(0, 0, 0, 0.7);
    color: #ffffff;
}
div.toast_shown {
    opacity: 1;
    transition: opacity 0.4s ease;
}

.section.calls {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAkpJREFUSA3tVM1rE0EUf2820a1JFYQK9miuYvVSUMGgUCzag18Xb4J3oWq1H1ZKTdvUprb+EXr0pNhQKGrAerNii1706KUqhLImtck831t3SmYbEjbnDizv6/d+v923MwOwu5pMAGvr/fdHXhLARZPj4gYhXprPZpZMLqpVtQ1MlrZigHYW6a3NRfUtAQT6IQTxtvhhVHBDfALqENvqsgQI0BfY2qymFKlVn5TgeKvk0mcJ8Pt+lyQSdYOjf/o+4rG7MzMJ8VtZloCD+MonIbimK4EP8DnpeZutkEtPrLYRDx7I469imYhO+XmEVRf39YyNDVdqcVF86wtyAwMeESz8J8BvbZg4NzU1vB6FMIy1BKSoEMfZEO+oQ2Wl94QbosY7BJ5kH31kked84NqhWnoalTCM3yEgAHRohA9Ykcd1tX/wwZ1wU5TYqQdeLhSKp9NnP3HtOj89J8+kv34ovFsLY3kzoJdMJt4vLm6Faya27iKTNFbenklyiKg5d28um5k1taGhyY6y9hZ4lF1cX+Ejv8Lfvu4g5XPZzBuDayggoGBEj1mIx4kvMObecrX6WyJviUmPGiJjmXBjbnpiv4nr/gNTFCtvrZTqk3/Cm+sKVEpfSvrPspAj4FosjkccVN0K1U3B+5tDnGA1FRDc7OT4axWDLt5dz5ggyTSpoL+oq3RZI7jk7M0HOcs0HZGF5uD24OgJTfQQEXp5bG64LvH89MQ277ZTD9goJxcg/S6e1xou8KlM8cHs5Nu4ky/Kt/wP+hr17tasCfwDFRG5hsIoVV0AAAAASUVORK5CYII=');
}
.section.chats {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAANVJREFUSA1jYBgFBEKAEVm+sLI6nuE/Q////wyCyOLEshkZGd4zMDIU9re3LoTpYYIxwDQFhoP0gx0GNAPZTBZkDszlEzpbUXyGrAYfu6C8+j/MDJg6VB/ARKlIj1pAMDBHg2gEBBFKTob5t7CiLpCB4a8HjE8sDczFDIyMjH+Q1WO14P//v6uBipiRFRLLBtqxDVktVgtAhjMxMU79/5/xErJiQmxGhn/v+ThYNiKrw2oBEyNjY197SwOyQnLZGBkNbHgHdQzHcFRRRU0DhuCoAK1DAADrXDEmZRDjfQAAAABJRU5ErkJggg==');
}
.section.contacts {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAbZJREFUSA3tVLFLQmEQv8tP0UGQaCiwrTFqaysiCHGMIOgfaIwEMUGojyAQqdz7A4JaXAJxE6KlrQha2mpoilDB0KfXnfrgQ9/zVSAuCh937+77/X7n3b0HMPmNuwP4mwJSWkcb31YOgdblPgGWA0GVymn97oX3FBDyZt16JKBpkwwBP/0htewlMmWCnHypvEdeDIT883L4XlFiknPCmDFPAbstTLwn1coRX0jsnEnY73sK9AP++qy8ADJQHutuo9685Hl0KhdfcN3ccAZPAdkWHnKMex5n4jebrjNkztnPbtbnlrDj9+VyZW1z46rVojlEmOFTA8TbQEhte22QzTFSO/Q9SKT1ApEV522JcdWLRDQr1SDiBxA98wxKiKqYz+pXtyodBRIZvQIt64wJV92AZpwF78CnkvlT/WDGxR8QSKSPtgDaN0zOC4BffKGASCWl8AnC4e6noVqNWhYtESEPH/g+RVjEApjayWdPCqbIwBYRtC54/xT3QUeC6lxrXTMBPf+FrZxrzu9Xvq1km+gYkLFcUO+Oszk4zJAc56x71A038A9siv+I2FjTjvxTYYpN/PF04AdflKcLC0yUTwAAAABJRU5ErkJggg==');
}
.section.frequent {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAr1JREFUSA3tVE1IVFEUPue9NzqgqBunyIKiRat2EoGatGyXqyAoiCgkK5pUZswZeTn+zGBOi7IWQW1ctWhZWwVLCCpXtQwCC6ZFjiQzzfu5fec1I6/pTT7XdeF67jvnO993zrl3JPqnVnzcPCZ7N00buwGTY18FnrHPhc0TcKg1Ypoxu2R9Yiw9ahy4Y5qFMIlaGJBg3LJ9CaZZKdXklKzLYfNCdWCaprFRsj8Sqf1CzEzr7dHIQfjtnYRCdbDxwz79i5w/gPy9UtS1WbYGdiL3igkCobK2YpliOjudjssxIieliLqZtSHGjFxSD3AVb4i0acWqENFVQbNaC7lcsljPtz2ieGI8qYiHUGknQM31QMxlsyNqdIl/o2yvk1Jt9RiIVtBdgUkt3M1NZyW+LYDC+OZYOgc7Wk2EHr8GuECKkcRL+VxmUWLxRPossduPlBgY9kDseI0LInP52UwCFk37BORDVjyZHsQQ7uOoA7TYHjUuYmQVL1j3B/4mdPMIAucRcjTia/nc1EM/bLsDv3P41sQpx3WfIrEVIsvN1DKQzY5982NA3lEsWc9Q5kl0+l1jOpOfnXrux8g58BXNz0y+iGhGHxr8jJH1V3grU59YLFu3hRyv6gsqPxFE3lBAAnMz5hrG+FLOIHon9rfFvFb9fpXPZv6MV4N//V+ES+wR+ohOK7jYo8RqwctTPGToasVy8eVhqmwBJnBEghtJpQ4hex8uaatiqUGQv8W4+mTL2bLUFZm9IrV3NJU6HMDtuRoK2I7qFQTG0wJzA8SsaXxPtpzFJ49AMI4lnQavhgLk+pKYVyN6pBsXeV22nFH9ao1SsdtQoOEdoMRe1PlVIy05Pzv5pPbDEVJ5AOiiZ3hs4oJLrvxivW5rgn4b2EEikW3HnJej1HoEL+Sxn7yWLD6JCQa+JS+nFvxvdzOBn56DF6M7eieWAAAAAElFTkSuQmCC');
}
.section.photos {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAVlJREFUSA1jYBgFBEKAEVm+uKrO8+/ff7MYGP7LIIsTy2ZkZHzMxMSU3tvWtB2mhwnGANGUGA7S////f9l///7NBLFhgAXGgNAQl0/obEXxGaoa3LyC8mqgHf9lkVWg+ABZglrsUQsIhuTgDaJVq1YxE3Q+UAFZPiioqI4+fvbSbKpYAMrdRZU1fjDDSqoadBgYGGf9Z/ifWFhZHQ8Tx0Xj9UFFRYPCv7//lvz7z7AUZHBDQwPf33+/1wKzLBfIwP//GacVVzZo4TIcJI7TAqBhHD///14LdKkQ0CSev3//bPr4/fey//8Z1OAGAi369//3aqBasIVwcSQGTgs+fv8z5T8DgxFMLdAiRSDfG8aH0UALtT78+D0Vxken0coihHR/Z0sKkAfCFAGcPqDIVCTNaD5gfAKqC0ClIpIakpigOgFZA4oPmJmZ0oBJEGgJeQBW4ZCne8TqAgB4LHTWsAMiggAAAABJRU5ErkJggg==');
}
.section.sessions {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAEBJREFUSA1jYBgFoyEw6EOAEdmFBeXV/0H8CZ2tYHEYH1kNMWyYfpBaJmI0jGw1o3Ew8PE/GgcDHwejLhgBIQAAHqQYCtIsz4gAAAAASUVORK5CYII=');
}
.section.stories {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAZCAYAAAArK+5dAAAACXBIWXMAAAWJAAAFiQFtaJ36AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAHySURBVHgB7VXLTcNAEJ2xYz63dAAlhA5wBZAKEipgL0AESCwSChYcWCogVBCoADoAOnAJvkWKjYfZsRMlJIsdThx4kmNnMp43u/vmBeAfFcCqBNU73wWiDj+2AIO2BCl94M8YKH82N9dPvyJQPb1dFtqdBr28DeQnTPgykxozcWgiHdcmUEenLfA8LkJNTkk46x6gMZgUkd99XhHhBX/d5isBn0LT779XEhSdZ29SHOERNgJltE6WNqJ0E9YzzbmHQoLBzveVNBbeotQunzunexP1FfwAY4RYqeMz20yn3NJwNseb6+j4fL9ccgybaxrqYhwo2Uo+LxGFiwCQ9sr7pWtbwLUSOScLUZyDoOjeRt9hZWSDoj4fvpMAPw8AcakaqmCiiOcC21yj7SaADYD8swm/hcdKsjXmQrOgdAjoDUWqK0Id6ZYMYKEkBwHCR/GQdWFV+ONWWSN2EwAO5EZ0qLSuvVWSW0w1l8ifnQQmunrlm72aMErvoC5G6cQyYnM9b36Lk2yVRA1rFV11cpbAZuCcCel8NLaNdAvPysKFcktfnDM765Z0aWdjIl8RQT7usCDU1BDzPDS3NcxuStLrsen5LzAZPsnGEHLePqThTOyVRXEgc7AE1X841p88Yo/CLVtIgtRgORN3i4/luf3jD+MLARXKtKtozPkAAAAASUVORK5CYII=');
}
.section.web {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAMRJREFUSA1jYBgFBEKAESRfXFXn+ffvv1kMDP9lCKgnSpqRkfExExNTem9b03YmkA5qGg4y7////7L//v2bCWKzgAiYyyd0toJ9BBEjnyworwba8V8WZALYB+QbRVgnzS2ABhGqS0BeBImAggzGRlWBnYctiAfGB8guQWZjdzd+0YHxASzcR+MAFDs0jwOaWwDNaIxPQOURLHLxJzziZEElKjyImJmZ0hgYQJZQB8CKa5BpBEtPQr4ilBFpHgfUCZNhbQoApShAJwPg/7IAAAAASUVORK5CYII=');
}
.section.other {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAYklEQVRIie3NoRGAMAxG4eTvGjAQi9ABcAgEAscA7SIMBGskQWHKYXoYuHzymUfknPs+LsMwTp2IZmYyAHFd5q2mX1AORDQTWWNmraqm2v44eNttEAJ6Ij6YeQcQa7tz7k9ODCtFCLeBJagAAAAASUVORK5CYII=')
}
.page_header a.content {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAPJJREFUSA1jYBgFQyoEiipqGkCYFEczEqsYZPC////rger/sjCzGvS0NVwhRi8TMYqQDWdkZooh1nCQ2QR9gG54f1vzCmIcBVOD1wJKDcfrA2oYjtMCahmO1QIkw2HBSBI9obMVJdiJSkUk2YCmGMU2mBySL/4yMTJE93W0roTJkUozY9Nw/MihA1a29oz/GRgcgTjQytbu5vEjh69iU0tIDKsFIE3UsgSnBdgssbR3uHHi8CGSfILXAnRLgBEWaGlnf5MUSwhagGLJ//9OYEsc7dedOHToNUiOECDKApAhsDgBWnC4v61lNSGDR+UHTwgAADa4h+Zrqrq9AAAAAElFTkSuQmCC');
}
.media_call .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAVtJREFUSA3tlK1OA0EUhTsE1yAraEVD8AQEuAZSAyUoBJrwCPQheAkkEoLhBRA4SJpQSZCoClKDoV2+s7mbLLM7hf2RPcnXO3N359zdnTttNJYq8gWiKHqAtKZM+kU8/HtXvMS+N19jfuTlCk39Ah+2ep14buOWxVIhVGATt7E5bpdytkV+gXfL7xEnNt5iH5o2rhYwOrUdfiKObTwirlZzttUYNeHLjBVeodIeZB4Mw3s5ozeo11zVMN2BOegMdDJPUEcC4xuQbuvwy3hg3IVPkIaZG+pIYDyAmXGW58k1B+VbmMVDkFTo15swb8ELfMMzXMMVHOQ9TDDHAhVRAekOOiBztXCepkGz0AVc9LmSPVF3qYUlHcYN2IULiBXyWZhnZRfUXWrhRDrxl9ADvVmshUZ/XcRB50SHMX3iY+PkJ+3h0pMiY8zUPYdwDPr3bRuPzrkTxkv97wv8AMG2b8VlwsFFAAAAAElFTkSuQmCC')
}
.media_contact .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAP1JREFUSA3tkz0KwjAYhq046u7Q0UVw7hXE0cnj6Dk6OPYIipt4BkfBTVzEAzjU5y2fGQqa0Cgo+MJDvuT7baKt1l8/cQNlWaZQwMmQnb5leBWCC9Sls/gmFNG00grUTMiWiuivoIiuRXLTyq5O8PkatH0Bsf6QBltrktvk+pLczh4+2zZYrOjnHlkzWRM9tt5DyHZv0mDu96Ukr0ox5QD/BMYwgj5IZ9jDBtZJkhxYw0XhDHYQKsVmQR0InMLNKl9ZlzCDIfQM2TqTTzGScqbeJgQdQZpD15egGFiAdPTF6xdTyRtYC3iW16nFua0S3CbCCPknR5T/p37DDdwB4fZJLFfE+R8AAAAASUVORK5CYII=')
}
.media_file .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAKZJREFUSA3tlNsNgCAMRcE4hgM5ia7hqEadQ2w/mpCGCi0fqLEJ4dV7D22izn0uQggjjA1GLhZT8eC65pyjez0ExCca3L0uAuBSBwGBFqCDGAHlkApAEuJ5rxEAZx6D39EenWjNZ67reULJnpugRoJ2JYY1OU0AYu8tlTSpwPJQUfNXILaGLt7fotSv4oDyBunTp9KFeefnqRZNkIQQbaD5rBU9P/8CxkTjzyHIItoAAAAASUVORK5CYII=')
}
.media_game .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAMlJREFUSA3tU9sNgzAMJFXHQN2HRcokXaAjNt2A/ps7ipHJg0rIf40lY+fsu8BJdF2L5oCLAyIyICPSK14QGvhygQ8cIkrP3jFiCOG26Olre4lbvUtN1C7VdhTH7gM5sSq2qyWxErYjmcMqTspE2HKzL7DDdNlopu0TwAfJmocV1T6tloXZoSXK3TgZgEkJUwJm9JuxWKK41u9IhOfMIl36UY8tScn2xnR25mz1rqvAG7Xn4IxghcOfd7Pojp6XeAXFRy+xpvPvDswasyTTINoFswAAAABJRU5ErkJggg==')
}
.media_live_location .fill,
.media_location .fill,
.media_venue .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZpJREFUSA3dlLFKA1EQRXftQ7BQSZEubZq0Wi0RbNLoP8TKOoVVCn/Ewl+QlAYCKfMDgpUWIhKCCCKu5+7Og/Dct9msXQbuzryZO/fNzoZE0c5bmqYNMAYLsDIoVq7xrwUgkIAnEDLVklqXqBH8mPIUPwAtg2LlZOJsdwkNWoub/IZ4z59SOaCaTNzq64Ks/co0ZSaOb4KhoakLVQPuTcb+EMEzTfqIsoEJSfwxy+QPxe4SrUu2CAr6Bcj6tchadoEm921oNX0X2crX0fnPbo30Zf7DfJlzHNdTxs1rTDPPZkrTE2WIy1Z0bNx5kXLoDaZGvpCP43iJ64FLQ89yHKNzPTDXk5/KnkzUtan0LfZDXGp6s6VxuyFeYZ6mmTVeFxJIUh8ZZxbiBPM0Jtb8jj/yieQOwJtxEr9e6UzzxATu/Abyt1ab+LXKZwQ64NOEzlwj51PLqdZx+VoeAbfnF+JDoNU8A9moluh6EyL6v3mQGnZvUKxc6Ge+LrE5RqgNXoEzxe3NnVswEOyDb0N/i9bqVMSvhOodu8D8BeBPLmAG0BfFAAAAAElFTkSuQmCC')
}
.media_audio_file .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAM1JREFUSA3tk0EKwjAQRVvxFMXiucV9BfeCSz2MurJXqG/KBEo7yZRQQagDnzQ/mf/TzKQo/uHcQOmsT5Y7YkJClITFbyxySS7HwPyD2KFyDGJaJr812Rlk7M7HqV//g3Ua/FYXJWvAo92BBjxAC850iflix93jzhET8TcwwxXwNqAqJ5e4ghqI4QX04eW766g8VWsfNjOvlJtd6GQNgrAxvgzOpFIGN804cOr+ipgflbvrmD8gGiuydFOdrzzIVJPQplKT02LiA5+Vf34AAKWne4ezSQMAAAAASUVORK5CYII=')
}
.media_invoice .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAATNJREFUSA1jYBgW4D8qaKS6p1DN//8WyOehuiUgA4EGH0azjBzuIWTHMSFzgOw2ND45XGG8moBOPg91dipehUiSQPW8QPwSqi8QSQqTCVQUBlV4G0gzY6rAFAGqa4HqOYwpiyYCVMgExLegGiLQpDG4QHXSQPwNqt4cQwE2AaDiFKiGC9jkkcWA6uZD1a5EFsfLBmpgA+InUI3euBQD5fWA+C8Q/wRiJVzqsIoDNbQDMbGgH6shuASBprID8X0iTP8BVLMaiDlxmYVVHKihBGr4BSCNnlew6iFJEGjoXagFbiRpxKKYEYsYqMi4BxRXxCaHT4wRCNDlcXk/HagQZMkQBcAg8gDiR1DsicsbxKrD0A/U+ACIYeARhgKoAFABQXW44gCXmdQRB7qMtkFEHWfSyRQAM2bDqlChV0UAAAAASUVORK5CYII=')
}
.media_voice_message .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAsklEQVRIie2UwQ3CMAxFXyo2KkvAMqxSZoExYIuqZQo+hxZkUheCZC7QJ/niJP87dlNY+B8kbSR1Kqcbz+CFZ/CJuDWxwvWYP9x1kzFQnnt36Wx/DZwewiklgKq4h695ErdEGFjx/ewu01d3aE7kNDYfbdDk+cgWlfGtFq0CalszDHnnLUa9g8lnGv0Ozgw3AbjaBWvQm8pKAuDimFTAcVKCpK2k3hneHO14puxnt/C73AAjeMcYc+j6SgAAAABJRU5ErkJggg==')
}
.media_photo .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAuklEQVRIie2UIQ4CQQxFf8EQBCcgBE24yBougMDBoSDhElwDicAgGCyKrH6YDWk2O2R3NghgXzJimravppU6mgBkQCCdK5D5nlYSBEnjlnMGM5vEBFTFG4AkmdmrvpfYqDad4LsF/U8KlpK2javcRsq9DFi4/xzIi7xVKRe3S7UEU+AOPIrGI+Ds8nJglioYAEcXuwCHivtzAoYpgl1Fsxj7mOD3btHNTZLyJCm8E6ydJIUgadOi/h95Ajk+bU+s+jWjAAAAAElFTkSuQmCC')
}
.media_video .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAsklEQVRIie2UwQ3CMAxFXyo2KkvAMqxSZoExYIuqZQo+hxZkUheCZC7QJ/niJP87dlNY+B8kbSR1Kqcbz+CFZ/CJuDWxwvWYP9x1kzFQnnt36Wx/DZwewiklgKq4h695ErdEGFjx/ewu01d3aE7kNDYfbdDk+cgWlfGtFq0CalszDHnnLUa9g8lnGv0Ozgw3AbjaBWvQm8pKAuDimFTAcVKCpK2k3hneHO14puxnt/C73AAjeMcYc+j6SgAAAABJRU5ErkJggg==')
}

@media only screen and (min--moz-device-pixel-ratio: 2), only screen and (-o-min-device-pixel-ratio: 2/1), only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min-device-pixel-ratio: 2) {
.section.calls {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABM5JREFUaAXtWV1oXEUUnjN3Q9vUagNtJfhTti1U7YNoK6Zr01Qq+AN50q6gD/qgRB8MTaJm292UpdndJoT8EB8kCiIFH2x986GIgiFN0xC0rxoxodqHEgnaH2Fbd+8dv0kzN7O3O5ubmL3rw15Yzs+cmfOd+Tln7l3Gqk91BqozUJ2BSs4AmZx3HD/xom07nzAmHjTZENEVznlLf+bkOZNNufXc5GA58LKfEOIhx3FGTGMEoTcGQMS2+QEgg0gmk7V+bMthYwxAMHHTr8Nslm3xa7vWdsYA4KgggPVUEx7qTZP8MUYzOpA82Vt1OUjeHIBg13Qgt1h+h5KxvX5T/ALl5Gu7FfRZI8EYADH6VffBie1UMrbXZcVL6tj2U7ocJG8MQBCb1oEIh9wV4ERTehsjaiqQAxSMAXBBP+s4BIkGJSOYCcVLKhhrGBkZqdF1QfHGAARZkzoInNzI+319G6UO/ON6GwpC7fTlq+ECXUACsJiftljid5nnlYVlWS85tqgTzDkNnaX0GOT6Oron3NNz7C+lC4oaV0ACwNb4XgeCqtt9F3iivOD0ViXAS2wlA8Be+VoPAKuxF/LSzAM8MfHa0KnUV7pdkHzJAHbUb0MAVFAPFDhc5PKM0+sDPemzSlcJWjKA1tbW2wD1pReYAj+Y6T7jbQtaLhmABGMRfeoFhZQa/z+Al7iWDaC/p/tH2H2jB0EOO4Ib6LJ99T7l4n2BwKlN6QCQnfZdy+bf1XWV4kvWAR0UasI5ZKEXlE7m/g1W7e5MJj6ndJWgvlbgDrDQe6DyUC88WIX7snZ2WMmVom5OXw7A5Pjon/sPHqrBtaFJs90TaWz65+L42LimC5RdwQowFq7fmsHWuaQjdIRIt8fiR3RdkPyKApB1IVRDUVyfb2ggSTA63R5PurdVra3srO9DrCNpj5142RG2rMBuf7wAzVMo1DyQThbcYvV+Xj4WO1WXo9v1Tz/x2HQ0GrW97X5kF4AfY90GWakNWWlA16FC38L14g0/Re7oscQr5IjPkQw2AsRN0AnQMazuFBM0J6z1849u3zLf0tKS0314+VUHIAdq7+zqdZjzoWdQvMyxxGBvOuPRu2Lb8a4oc8QXmICQqzQweP+e5dx6Bx/Pvi1m4jsLFet88cLYd5EDh2rxjvyM1i4n5fD+xoN7Gp87fH5idPRvrY2tBPxivzohWNPkhbEhfRzF/6cVUIMsbqd+yAXjQbiOAx7fvCH0Ma4ezirAKxfszuccV3SZAoeudhXMwsFmzmeoE/d6u8PJD4KzsyQo7dk2Nmf8TWyTn2whIgh/H2zDmPHteJ16WB+n7AFIZx8kEjvzOXEGB/JJ3bmBt/GpRr5P3HVdl/ZHO+MYZukxBbCiOrA0XHGuL5WaCT9wf4Q4PwkL99pR1JroEnHrhvpQUNTGh3LNtpDXV1ssuYux/Ef6BdBrsyjnkH5l7ZhCRZwhiyPrOLO5nPhFtzetQNkCUM47OuMHUKESkJ9XutXQigWgwHbEuvbioL4N+VUc0M1K75dWPAAFdHh4eN3s1T+a8c2mGcv/LLaY+91J2XgpttiVwZ5UQVZSNmXfQsqRicqzQsJucEg8gjOwG0VxF9KpXKFNuF9tAp2r9N9YJuxVfXUGqjNQnQHG/gX8t4MFUip7VgAAAABJRU5ErkJggg==');
}
.section.chats {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAYBJREFUaAXtmM1KA0EMx5O6l5489uJT9OJR8In8Qi1tYcUWv6D6Ol4E8d6D7+BZbyssuzFTFWxpxpEsOyNkYGmbmWT//1+yhy2ALSNgBIxATALou/n+YLwDRFO++gTQ9Z1teo+FFYA452t4e3H+KNUXDXyJfyCijpTcRhwRazaxK5mQxTH52OIdoIUGNwXC8hnoCznth3mEpZtm0sbqzN9dTcVxk2po4nsnQ5bwuVa1fMfdp9yBn6cS/m4GYjfHOmAdUBKwEVICVKdbB9QIlQWsA0qA6nTrgBqhsoB1QAlQnW4dUCNUFvj3HRDfideBOc7zreq96q3bazpWUR1UMtjA0WC8XRblPb9gbwZVbvQQvknlgkeoqutI4oH/16IntYE45J14eM0yPJQMBI/QUgGEZwQsl2IN/yCCgsnPYaN7fTMZvUjl/2ygg3g2u5zkUsG248HPgBOWmviFplBiKYoPNpCq+CADKYv/1UDq4r3jf3A6yr0HbNMIGAEjYASYwAf+gF/Xn8l5JAAAAABJRU5ErkJggg==');
}
.section.contacts {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAA7lJREFUaAXtV0tIVFEYPv+d6yPBBxEiZe2ikCCpaFVSYqG7WtiiwE2rKKLxNeq4OAsnNXXc9NjUQiKKWtSuF8RgrYLCIKRoVwYiIamQj+7c0/+PTp25HWfOzL2J4b0g85//+X3/PfecX8b8x++A3wG/A34HNnIHwGvyrV18jxX/eRaAHRcMdlB+YOKzEOyZGci7NXiZv/eypmcEOOf5s4tWFIGeE0IYKpAAYCOxGyUFZjP6L6l8stV5QoDAzyxYjxF4rQ4AJPKitNBs8IKEslM6IGSf5c7rgac4Ikoxco5cZdcEaM/TtkkFABMBYKdZoGgr/SVkBhOyD8VQrKzLRTZzCZJj6IPFtdQImIBN5t4hzqclv7tBzp+Keesd9r+S9PSdrMQGJb+sRalw1rGJADpt5MgAiPbhVPAJM+nIJvs6Y2WbruyaQPKoTBaMG0WxpOz8ddqcsU5/nbVrAjpF/qWPawJ0SckAA/aPI/Jalp02Z6zsqyu7JkA3rFwsLuAKfrCbZR3JpCObrHfGyjZd2fUpRONB3LYu/rl9RSWdNi0d4fbknqfOx+ctBL98AhE4upVZHtzUBbqanyc3cXNn91XbFudXK6LSGwZci/b2XFDZstG53kJUjGYbGg90C5Mvxej6p/MLpDPq2mKxWLy+rvbeki1w78MBjFO+Wdo22PnrOAc1eTEHET5lIV3gKr+1HqdVGHzdWnbAky3Uynm5WLQO2YIdxLN9FybdKUCUM8FKEmSAzYKAKcHYJ5x/PhrAXkOB+WqQ8ym3ZHMm0NLJq4SwTgkmGhF0VS5AkMw4MHgAYN4f6uXjOeXINijY0Y3/67IwzsM12cam9QcYxW5Ghvt6Um72tDFo1H4DwXDPNmbN30bwRzMldWNP3CeBwqbhSPdXnTxaBFpC4RqbwUPcLn/NOFQEi1pI7I0h4KUN9liAGR8KjMKJiori72SfnJwrW7QXKuPM3m0Io9oGcRgL78fxQznK4LaaNpg4OdQfGaX4dE9GAs3h8HZhwVsEv0WR6DkY7E6+Xfyov79jRmFfVRUK9ZUuGXMnhM3OoNMxpyOS+Aam2BeNRL44bfJa2QHZAcFHneCx409Mw+wcuMzHZN9s5BXCIxgz0tbFqy3b6sU3Up/MkaiJtXHdmNSpfjMSwAkypTsIvh0/tAFVslx1K41owAOiDUn8HrlxW9ZlyplxmMMkpXISr8Gnzy3KZLtKzkhAFbSedBpbKBXupVAYX8r6ef77N+ATWD+byUfid8DvgN8BvwMbsQO/AJ2HVlQqNEM6AAAAAElFTkSuQmCC');
}
.section.frequent {
    background-image: url('data:image/png;base64,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');
}
.section.photos {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAqhJREFUaAXtWc1qFEEQro4RkogIEQ+ioDcxCgEDgje96dlD8OIPePTgZENmJrO7DJKIcWHjQXPJIRf1oAT0CYzgC/gQRhQ2GAV3wvyU1QsDnTG17ExvZvfQDctWV3d1fV9V9exON4BpJgImAiYCg4yA6Obc8pbOQBQ8B4E3EOF0t7n9HxPbBG4LRscWVper37j1WQISPMbtr4BwkjMuRS+gJY6MT3MkRjgQGAeNgYOX4GQAZRUwjSUgAK8zNuWrqYQ5p6PcQLbmX6wss+XGraGjf2x7mNpnsaR6+c1mQJ00zLIhMOjsmAyYDGhGwJSQZgC1zU0GtEOouYDJgGYAtc1Lz4BtPzuhjVpZoFQCc0799p7488VqNscVDFpiaQQWqtULiPEGvaBchh87r7RQK8Z9IVBxajOW519V1t0nzjcax8IQNukP/nE5gIAP5uza3X2TCna0CVi+P5kAbkIcfugcAhwAJGrtrhPoS+oQQrJGWbmo6orIWgR83x+BIHqDiOc6b01x8DFb35ZTewSId7LgKBsyK+9pjYnsWJ6+FoHfQVQn8DdThyTP4M+djbQ/79auISbNtJ/9lln5FYRa+6Ewgcpi/VaCWM+ComjPWrZXdd2np6IE39H40f/mqAqE+5br3VNVeeRCBBzHP5/EyWtydOCLPpXHk3by9zNt17O9gEEUaxXXn+plbnZObgJUs2N7GNITBSeziyl9Ioa9b1DEiQTDQvshN4HddvSSInxFAdsXkR4CU0X2A3suxKFaXVl6SGPyMxQtdwaGArUCwhBQgjEQkd0DQsB39UxSPassH6nY5nzyJYTiE2dUtp6eyVucT54A3YzQz1SLMyxNLzFILExjCcgbEXkzIkC8leXE2B+aWvrs+O5yO3Nozs3CJgImAiYCPUfgH8mf2QU09MCIAAAAAElFTkSuQmCC');
}
.section.sessions {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAJJJREFUaAXt1bEOgCAMhGH0id0cnB3cfGOdmpRLHMlZ/V0gKebgw9TWeBBAAAEEEEAAAQQQcAlMT8HLul25dh57t1bree2IueZHxhyTqiMHqHpz7BuBrwh0vT0fSvu89mGt53dHzDU/MmijIeEay9+AC45cBN4iwH/AfRPl22j5A7i/APIRQAABBBBAAAEE/ixwA8VtGBYcV3+qAAAAAElFTkSuQmCC');
}
.section.stories {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAP1SURBVHgB7VlNTttAFH6TECp29ARNT0DYsSjCnKBwAuAEuItCFJBwJEgddZHJCZKcoOkJaqqqYtdwgpody+4QJPH0jWMoM/aM7cRJW8mfhHDGM2/e37x57xkgR44cOf4mCGQEs2qVwRvuIMU1AmzQajbawvuj2hkQUgbCLgGWHWpbLmSAmQUwq7V9YGQPHw2RMqlT+9zy5xyftPg/aekAhWlTu9GFGbAEU8KsnhrAWAcYlBVTtv48EpzD5PcVFLyDwqFlWH1aQVILYFrWKtwNz5B5Uz/T6z09Eu8zMrujmFgOBFmDlVKdWtYvSIFULuT7ORt+Aq69SGrEAY8hs8yhHxsDcW0Vz0hxBwrwFo1hKLZwgZS205yPxAIEzH8BiHIZ1kYtU2rbLiSALwwULRRkL+J1KiESCRC4zQ8IM++ixndlbSeFLwgrRillgO60ncSdCpAE3OflTQj0cJP1aZnn8C12X1pHYn3pVSXYMxaxFgjCZEda1qfN813IEObRSRe5EV2KEHSlc0e3Lt4CjMiacGFl6QCyxkPJ9GkLe7NO3DKtAL72Q64z3k4b6pKAUqSJ50kaLgc8KKG3ACOHwm8C3aSRZhpMzhNpSzzs6dYoBfDDZijej+swb5ARlUaMgJdIaCzwYIiEiTNP7T8i2MMRBnmSqIBGAGKIRPCGXRQYiHsVYE01VSeAK84c92FRYCVH+O1516qpRdWLq29fnY03Wy9RkFvMFpvU/uDAgnD13bnd2Ny8Qbddxb8ebTZsyPGPQptKBGWggS7Um7VySotJCoOpN55F2rx4p5qnFABzExPftp4GimydNqZP3NIgSN1/Pg08K09lqKNQQbrERlJYnSdCcZ+9Uk1VC+CBqG3CzbkghPbinYxoaCwQivvaKz0rBHsY4qjnqOYrBYi80tnwEOYNFipkBroURp+NYvSRRkyzVqvAnBBofx9EHtq6NfEV2fEJjwblZ0OuX0pmXBMo6m4eQl/r1sVXZITI1VcZN2pB1rgbdSBUPLHY9D1ZV+L4FHN0Jvk/68PK8sGslpho/gEVQvYl+m3Mgcy49cm6EvdLFoAUVgE7bWjyWSKT+b5WmbiNzDx302UrCY0UjS1lD4cDOwrYFkzYjApuWm7RKA27ft2dsHhK2VrUCsHh+MVIodSXhfGjF7/NJ5eUoViPHevxbprKL3V73TTRZ1+MrPCZkCmzg8cEMLq3JAPDJbpN2jOVujvttz+4HNXaIOgZlSMnMuD5THfyrO0suDzSUfvCgSkw9feBQLvdiXYLaA1WCTH2CEIusUllCG95Jxtb8LOm6Rl+YuId54KBJPHDBrmR018/PefFuQfXUWckR44cOf5P/AZ2hpvgHcKhGwAAAABJRU5ErkJggg==');
}
.section.web {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAXlJREFUaAXtWLFOAzEMtaEDzJ0QH9FfgD+CBYYy0qHtAF/Bb8Av8BG0EzMdWpnzqS8XRTrlqiNKgnyLT3bOeX5+yUkmsscYMAaMgZwMsL/5/fz5mva7FbHcitCVH8v/zpsG7AdNLh5eFk9fwOMKUPBy+PkkoSmCRVqmbz6/nKGIM4CUw25dPHgFqwSrSo6PK4BJbuAs3jYSB8YJXkLNvy4XTl5Yk9PePc4F+/tYXQcQrM1aAbk7Zh3I3QF3C8WA+LeArsUtFfpjeYbGkT+23iQUYyh1vPoODD4DfZrs86dmHvmr74AVgFbmsoPPQHjfQ/uh/68KQf5YPpNQjKHU8eo7MPgM9Gmyz5+aeeSvvgNWAFqZy1oHcjGPfd0txExbf96S6g+LjcdZ3uD7TkLC73CWbtsh7xFkV0Az9aVmcFo6+BajYg0L0GmvTn2Z+E3lhAWlWMXUYvMm04pt9Pxz7FkZ+yfvJFQK1SfisAJOJMyWGwPGgDHwzxj4BexZV8rZgcWtAAAAAElFTkSuQmCC');
}
.section.other {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAA1ElEQVRoge3UPxLBQBzF8fdIETWFGYdQq1A5gJNo0kRJQ+EUTqAnMxqtQyhTMSNF4qfQrT9LIQrv0+43m3nNAiIiIiIiIiL/ie9Eo3jSQp7NQOub0QgkCMJoMR0fftF/NGAUT1pWnPcw1J0vU1Zrbfcn3+5dFd8AK7L53eUAYKgjz2Zl9y7vAMJ6zw+tX3bv8g54xYz2694/wLh5dkQgKb13+AcEYQQifXB7iiCMSu8dVV+w266Pne5gyUvRJNEgcSK4YlAbPnohvt2LiIiIiIiIyM0Vs3ec8a4LvcsAAAAASUVORK5CYII=');
}
.page_header a.content {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAcBJREFUaAXtl91KwzAUgHPWgbv0deratTjwDdYH8coLwYkOFUR8H9kP3dT5IPoAXrvGnEGgjDbpT9JkkEBJadOT7ztp2oQQV1wGXAZcBlwGXAY0ZeDy6nqKh6bw+7CeruAInlF6QwmJz8LI+9ykSx19aRHg8ByYSUR+MNpt39cpv6aq7qsKxOMcwu+vA/x6AG+8jcoaVAYrg+8DXDw/3H2p7IvHUiZgAh4llAiYglciYBK+tYBp+FYCNsA3FrAFvpGATfC1BWyDryVgI3xlgUJ4fLqD8vo0E/6rejIGk/AyNrwvFagSxGQbqcDL4/20B3BrElLUt/D9yj9Y+CqxZbLOlWa+/7LzyhsatqNasZ0V4A4rF+wkIyQJwmj5sUm/c9c7O60sgERlEpTSSTCKjUjUEhBIDFDCj8eL7XrV6UjUFhBJQJYlXUs0ErBJorGATGIYxnM2Z36wnc7SSgDBSib2gBCadCHRWkAkwT65k2EYLXSOhBIBmYQfn8/Z10nL66RMQCRBMsq+TnokpGshBKtTitdO9BR2f+M6caq2VToCvNPDiY2LQSY24/ePpsYFIB5HA+xAXQZcBlwGXAaOLgP/TQQam/2N7EUAAAAASUVORK5CYII=');
}
.media_call .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAulJREFUaAXtmL1rFUEUxfMUFQyCATVaxgQUQSxECEGwUTC1GkHsLYKFTcB02lnbpLXUfyDWFiJqrFWMmGclFsYP/CDi+juPTZgcdue95+q8FfbCYefMnY9z73s7MztDQ401GWgy0GSglhnIsmwavAUxa+OcrmsA3cSvB9YeZACtsslR9wPf9jK/1Q+3Wq2vVpeEbonM8jnic9cer0jF+wlgjCx3DHHLJnCv8WQ0FsCqqTgY8JWgrOI+48loLIBXpmI84G+CsoonjCejsQBemIrwF3hsvlPGk9FYAM9NxWTAHwZlFSdZtbZZXRIaC+CRKZhC5HBed8x8O+FjVjd4imDttKFpd74EfoaVlFfByOAVmwJE3TGhT+Eufo2689a1HlTCLACnEn+hHmoLVCBuB/jgqnMu8TMF3epVhciFggD+D/FKJeKPFwQwV680d1FDAPctiCfw2BLcZcTEbsSetABEZxPLqDYdghctCK39o9VGTdgbsRPguwVxN6GE6lMh/oYFIHq9+siJRkCs9oUlqQ7sF+X6bmaeG8SOg49BACp+A+Fp1bvViyP2HFDmQ3sP6SsI2o+AI2Br8giZ9Bpw0y/R0/GCdjpnfckH+MRTe808OA2OggPg335jMMEt4KZfZj6WUfwzQMeRXmyZRmdi41XyMXhREBJ2D+z3wanrR7zGkfklgg9bjTOB/k7+TmhibXazoHPs4Pkn4umWZdUU9tCbOfRi++qkuWU6O80B/9vo4+gy0IHxKtAH1AOwAjZZDxKqN2FGLbG+T2wSEhCJv1g2a9CuUyxr91dPlFzb6cZuCtwEuluN2TOcWn3WLwpibUt9pZe7pT16dCBsgqa3wdkuXdbw6wZEd01KwOscL3lumO40N0jKAoHoKO7fE1T1Zyk1F86FXL2oC6DsGzsaUeGgg6hEpQ6E2oW14vi9E1WF1i7TOpj/VaAGuXpXdIY6DA4B8d1gV453PK/wCizybKzJQJOBJgM1y8BvOJC02lY/3lsAAAAASUVORK5CYII=')
}
.media_contact .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAhJJREFUaAXtl7tKA0EUhl0RSxULIURLUaKFIFipWKW3TOVTpPcN0uQtUlgKgoKXShBsAoqdWimomFaJ3w+LDOMO2WHH1YU58JHZM2fObWc2u2NjUWIHYgdiB2IHYgcCdmA4HK5CB/owSNFYutWAocK6IrlJ6MInuERzspkMG72gNyUEx5BXZPt/iiAZddVXugX7FmY5WWvP29vmAV0LaikaS2eK1vz9mSAJHU5TlOis3R7pwC6iY9uVfk1SesKY0nIlgZHuhCl9l21perLRo9KUmis4RtpSpgxctnn143kN/6tdiALureJ2rGvz0p6z15q25YzZD5U/xEUeoyvltHlEFO5Cdf/IVBsFVPtVwiiimi9z5g7jblTzddosIo49OpB42DpN2TZzTG7CBizBIkg3BZJ3eII7uIVLuEiSRLq/EZJuwD7YL3OocovWykejtCoI1oRTCC3y2fy1QnBeh5PQWWf40+dmPW8huc4ADrdxeAA/PlTSQB/8XsE5XMMNPMIbSGZgHpZhDbZgHSYgS15Q7nJGzrImvXQkvwDPkCVHKPdg2sspxlqTrpWPLFHMBV+/P+xx0svwfohOnQwi8gXyaUuvcAA8vlle24WdOhwQp23FenWYfqtHngE5/LZmwL4cuca09x37xgvxReabY1B711PAGcTukNOwpInK34FYQEk7JYaJHYgdiB2IHYgdyOzAF9Srass/u5CaAAAAAElFTkSuQmCC')
}
.media_file .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAVJJREFUaAXtWF0KwjAM3sQT+DbxDnpEr+KD4jG8gkcQnD6IN1Dm14eMMTbSrknrIIXQuTbJ9zM3aFHYMAVMAVaBpmnWiCOiRsSOPdtQcgPQVohXLOpefjoSaHzoNZf6mYYE0N6kEA/U0SeBpp9u46mPZ7dG71qXRAICjo8eiUQE9EgkJKBDIjEBeRIZCMiSyERAjkRGAl4kSu69jipf7FnQvhKDrkNmhyZkP+3l+rXAKGFu8zIVYE5JwhHq1OwdMAJkfa7ZHMilPPX1cWDSe58aaM8+BLQxRNU3AlHyCSSbAwIiRpUwB6LkE0j2ccC+AwJCj5bwcWA0+R8WjEBuF8wBcyBSAZ9TiSd6VNQn9NSA8ibODy7P5z9w4YoorrO92a8sFN8A4BWxUgQ6VPqNm1ucJ9VDi3SPdQAF7ti8Q5wR7nHSHq7HCcGC1wZi9U2BOSjwA/sNRweOn8VhAAAAAElFTkSuQmCC')
}
.media_game .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAbhJREFUaAXtWFFOwzAMXRHaBfiCHWLXnOAWSHANuAKH2PbFGcrzqC3PjZsUsc6THCnEeXGc55cma1mtsqQCqUAqkAqkAqlAKpAKnBTo+36D+oZ6QI1W9iBE3DZ6uzruDANf6D8wFrT9Bq9t13V74nenSL7Ajk6e6BLHZzKo6B04oP94QuP/OWIHnoimTqDXvOEgYxq/lk0HUq/N/PQjpMdvxp6dACmhy39liphr1B0q3YBUyV43x4fzWfEmnjmh4/nNxRGKCNuy4zh2gHFpqw6DZ6ufBG40ELf020MXy6l4685+hDhglLaagJc5J1AbZ7+G9rXgU8IKboA8Ihav9cvR6yjiTh5iu+4ooudg8Vp/FHgAMG+SoDePcbsu49J6Dhav9SWgMTBv8pYx7qOuXXe+wzCjGmgU+RfAvMlbxpkmsLdu9RBLhKDGkgmUbpQS9jepvC2y0Vr9CvMucojljZOI6UX5bU9j17Q9fks+QhfJ/15FPcKWDxqbsfKLYMo7kt6BjwjMGjl8sp8+A/S1f7sf9Ti09JW/RX1HpccpWiFOxE3+IxGNYPJJBVKBVCAVSAVSgVRgaQV+ANjgZTiWvls8AAAAAElFTkSuQmCC')
}
.media_live_location .fill,
.media_location .fill,
.media_venue .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAA5lJREFUaAXtmc1LlFEUxp1CQpGEloUtDCwEW7jITYIJaZnRys1Af0MtbCMUuHLRKohACKRduJASapcbwSSjTYuyj1VkEAaRq6Kcfofmleszd3w/5r4zgXPg4T3n3HOec+713vdjbGlpSnMF9vcKFEJOv1Qq9cN3BQyCY+AoMNkAn8EyeFwoFF5x/X+ExifAOkgqFjvR8BnQRDdYTdq1J85yuxsyEQoPgU1PU2ldxjFU10lQ8Bz45enUfPOgCHpARxmmm8/GquXVZxI0YNvGt/IL+E/EraTFAItVMc78txNFdM//wXcjrnEdtxxgua6salxQm0p2t1FJ3XzUFEQ2CZX87k5U0lvlQtRM1iucup3Ws3LtmUehflkqO4zePY9/ECyCjTJMt4dbheC3M6EH2x6IYYUi08CVeV8FAqbAthtY1m2/T1XJsbuTK9O+uJp8sC+5FdCLSojPVl4PpptmYxV/CXxFNwh9SblrtiHV/d+jpMTYVomTRU+ePSdcCX8OYN9yK6B3eBqxPR8n9mK3S0iwB54rW7sC9jAO7DGmQwfFkSZXUitM5dJaFQmRQxMjv++6Kc4usc186fGpyxejXFpLOXbsNBP4sJP1T+kV28zbYNvjj1w2ZjEqp8TxXuyqZpoJvBCWC2K38KGyjO8W8E3CfDfLMZo6Ko41sWs3OWGj7ilD/wK8C4DfbqdJH2QFYj8BV3RCQSbQSoXvbhX0S7Uyw3FeOK1Ga6283nyI56TYU29gCid8j4RzLkV6ulAKDUgxe2XQA5iYlFz7tvgtnAOJCbIEUmxNCj7MwmM58DwQrvCHV5uj4JgUtb/CaY2Ls8k5CXT1x+LygoxTeAW48iwtMclPXAL0lbQcmeMpNizFzbyalJBY35fdcNL8IHE0oa/XX/EdiSMn5jDQl76luLzg4zTRB/RL6n5cIXLuAleMoy8uL5dxCs+4naDbgT5brRhjZ4B+8MxUi8/dTzNt4CNw5Q1GmxbHdwi8dgPRLbciVnNztWlgRJoy854WxXfHEzeicQ2xaWzW09zlqBnGLgLbXq7MRuMNv9JVO3jrdof+DRwHXUB/irTY9oY37jZAQ/3gJ3DFfoZ87jrQLSb87z5uM1l1GpuUZn3mZFb+3PPo1j5O9PXYnYSNBf23VvBJ0WAneOd2XdbN1xm8YB6ENNoLfpQbt4vpvh8B8igfhpOGx4E9dQ3jYVjrzELj18G1OpdtlmuuwL5agb8vZNPEQr3r0wAAAABJRU5ErkJggg==')
}
.media_audio_file .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAYpJREFUaAXtl0FKAzEUhtsiuu6ioAh6gKpncOMRCi4KbryPotJ6GUHvoK7c2EXdW5fq+AVcDK8zbzLpNBPlBX5o8l6S//+TTNJOx4o5YA6YA2060F335FmWfTOH9zxdSh1OvTrJKeaagLZXxVbAYwUyj5zgFFuBYOsa6rjR0Djew9T9zlcNbFuoyiHidog1k2wLae7EiNkKeLhsh1gzybaQ5k6M2J9fgZXfQvznHeL0OTgBe+ATvIAHMAFpFohvgmvwBcrKUiwJNbB15O/KWGvtqQi40UhqsdYFQG4I5NaY0zYGu2AHnIIZWCopCLgQrN6oDyQx2vrgVeSu9VaWHArrEHoSpM4KE2kkbyRykxCwEKT2FQEDkdu4gNgX2UeZ2ND2EAEzMdmxqOerMib75nPj/GZLrHKIL+OwVGZBwAHQPqPbxIs+o67PoTJ0vBBEQi6yaTyGFTMhoO5T4p4+WxXDxg3/ivB5zN0mRz5vFeTc08Id7EfwDtw98QyuwFE+136bA+aAOfD/HPgB+lWRM/EQ08IAAAAASUVORK5CYII=')
}
.media_invoice .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAtBJREFUaAXtmD9oVEEQxnNR/ENUDDZqQoqUNoqFpWgjWAl2YmGhWNgJNjaKhVgIlqKViAQLwUpiJaiFnRALQUTEkBgISoIoaqHG34Y7mJvb3bf/3nmRtzDczuzM932z7729dzc01IxmB5odWN2BFfd4sSa2yK1/deXgwDdR0cDjtd6A6W/fwDchBSL4ecVV6dfye4iOSm1y3pKOnLeLpmXsH87nWq3WhI1/2BY0MQrMfT/jWu9z/LeLz9lAu+Caq7DP8ZtJfNxGw9hbTI4bSWCBRRDdl2TMP2CbAst70yg+rQC/4e/ozcyPgHsA+6P4TmYhA7YBm1egV7JAHcVw6JPvJTHnQeOA6Q0Dcl41sIS/pTczPQLeMcVh3MPpiKISoBHss0EU44JIyZqCuR57I7DN9FEWqC4G8JIiWMDfqPNSfHDOKexf+HtSsJw1AI5iXxXRWWdB4AJ4W7FFhXs7sDwuDZLriugd/ro4lO5s6q8qTHPK7ezOKuQBvAv7qQhPpMKDM459V3iXU/GC6iC7pQhfBRVaksC5o7DMczViSS0XgmASMw9ZHeNMrNLoLwlUb4NkFtseS1aR/5r1vbxEOl/cbPVVL3O2mosES4tfBPN4rHibOG+M3Z/AfhS8d76ANY2VPfNdXUB0T4mfw9/syh+oOEL3Y/pN8dRAifSJQfwDTI4ZnJRnyEdT3xpil6V65kfqYwtHDj5GEbwE7Gg4dF4mJ1KQtphb4EmepHqqg7o01FyBcT6eYZPGr3sUvwIAziP6EPYQW8aa0exA7A7wHOzGprCPbTPzsVicTj61RfE6uNZPyMyPmU+YHubHfnQT1BTFs4qWQQjvauXCn5K5IfPSeJWcEM4KwXq6UAmgEkrhxXyRKQld7kqXl+8E48U08NSjy7fmKvPV+NZceP44l7zoQ1caz6++vQrpGNY5Rs0/CLnHaFG8oCaapGYH/rMd+As3HEOlEHuU6AAAAABJRU5ErkJggg==')
}
.media_voice_message .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAABYklEQVRoge2YMU7DQBBFnxEtiEtE0Jsi3CpcIm1yEMIBED0U0IdbYJJ+KOJIZj2Jd2wHTaR50haxZ3f/y1q7liEIgiAIAkeICCIyEZGViFQyPlU99qSey9RSCkXgFngHbk78X30DU+DL0qko/ka+UGrmnD489RzzjLoSkLo9pTe1FaiA66HpMtkCV0ful8BH80KRLIEmkD5orZqB5I7fCg9tAe0R8oAaXsOjQHZ48CdgCg++BMzhwY/AofBL80jKyWk+LTtaSnngxF5o9WleD9uoxhJ41OrPYRtthu/E4wqk853dCpjwKLCwFHsUmGGQ8CBwr1zLlrgcN0svPtlJpAfZLKezh11oP37Wq4TnXWi/EiY8CUAPCW8CYJTwKAAGCU3gJ/ktI7cm26ESmsBrV6cReem4n0qs0gJtG70D3vifD1sPwNrSKefD1prdF7NnYNMz3DE29dhTjOGDIAiCIPDGL3zudmKPpFbhAAAAAElFTkSuQmCC')
}
.media_photo .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAABkUlEQVRoge2ZsUrDUBSG/1scrA6C4qBZ3MQuBUXBR3B21xfwERycddVVJ4tv4KiDbi5C6SxI26mLqINDP4em0JTk2sQkt8r9oNM5uef/kkshN5LH4/FMJYCAALgGOpRPO5wdAIk5jUUgkPQsaamA+5OGnqS6MaYdV6xYLjyT+/DSIMNpUtH2BDqSVopIlIGuMWY1rmATGN94ib0FEZlvjImdb9tCfwIv4Bov4Bov4Bov4Bov4BovkIGFPBcrW2Bf0oOkauGTYl7x9MvfOvAWrnU5QX90eMECW8COpT4PNMfWO5gWgUXghcGLf5DQ04hZ7x3YcC1QAW5Hep6A6ljPUcxaQ5rAnEuBk5i+m5H6LvBlEQC4ciWwB/QTQh0Dy8DrD+GHHJYtsAb0LIH6QGvC8AAfQC2LQJZTiVlJj5I2U98VOy1J25I+hxEiw3M8lThX/uElqSbpIu1F/lzINV7ANTOWWlfRw930/8X50Ukq2J7AXQFBsnKfVPjXHzjakuqSGhpsp7LphrPrYRaPx+OZQr4B0zIxY1XMHNsAAAAASUVORK5CYII=')
}
.media_video .fill {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAABYklEQVRoge2YMU7DQBBFnxEtiEtE0Jsi3CpcIm1yEMIBED0U0IdbYJJ+KOJIZj2Jd2wHTaR50haxZ3f/y1q7liEIgiAIAkeICCIyEZGViFQyPlU99qSey9RSCkXgFngHbk78X30DU+DL0qko/ka+UGrmnD489RzzjLoSkLo9pTe1FaiA66HpMtkCV0ful8BH80KRLIEmkD5orZqB5I7fCg9tAe0R8oAaXsOjQHZ48CdgCg++BMzhwY/AofBL80jKyWk+LTtaSnngxF5o9WleD9uoxhJ41OrPYRtthu/E4wqk853dCpjwKLCwFHsUmGGQ8CBwr1zLlrgcN0svPtlJpAfZLKezh11oP37Wq4TnXWi/EiY8CUAPCW8CYJTwKAAGCU3gJ/ktI7cm26ESmsBrV6cReem4n0qs0gJtG70D3vifD1sPwNrSKefD1prdF7NnYNMz3DE29dhTjOGDIAiCIPDGL3zudmKPpFbhAAAAAElFTkSuQmCC')
}
}

.spoiler {
    background: #e8e8e8;
}
.spoiler.hidden {
    background: #a9a9a9;
    cursor: pointer;
    border-radius: 3px;
}
.spoiler.hidden span {
    opacity: 0;
    user-select: none;
}
#inline-tgs {
  display: inline-block;
  vertical-align: middle; /* Set your desired vertical alignment */
  width: 20px; /* Set your desired width */
  height: 20px; /* Set your desired height */
}
#medium-tgs {
  display: inline-block;
  vertical-align: middle; /* Set your desired vertical alignment */
  width: 48px; /* Set your desired width */
  height: 48px; /* Set your desired height */
}
#sticker-tgs {
  display: block;
  vertical-align: middle; /* Set your desired vertical alignment */
  width: 100px; /* Set your desired width */
  height: 100px; /* Set your desired height */
}
.tgs-placeholder {
  display: block; /* Initially hide the placeholder */
}

.tgs-fallback {
  font-size: 16px; /* Adjust the font size */
}
""";

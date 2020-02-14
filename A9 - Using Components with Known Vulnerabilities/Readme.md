<div>

<span class="c0"></span>

</div>

<span class="c17 c36">[OWASP Top 10 2017 - A9 Components with known vulnerabilities](https://www.google.com/url?q=https://youtu.be/bQWF29ujBpk&sa=D&ust=1581704323999000)</span>

<span class="c1"></span>

1.  <span class="c1">Here in video 9 item A9 from the OWASP top 10 2017 list</span>

<span class="c1"></span>

1.  <span class="c1">We have a non mover using components with known vulnerabilities</span>

<span class="c1"></span>

1.  <span class="c1">This has a grid which canisters will exploit ability is a little bit variable depending on what exactly the vulnerability is.</span>

<span class="c1"></span>

1.  <span class="c1">If you have a vulnerability in something like a public-facing web server</span>

<span class="c1"></span>

1.  <span class="c1">Then it's likely to be more exploitable than a vulnerable component or library that's hidden below the surface that's not necessarily visible</span>

<span class="c1"></span>

1.  <span class="c1">Although this is very common  not all vulnerabilities are as easy to exploit as others</span>

<span class="c1"></span>

1.  <span class="c1">And as I mentioned detectability can vary depending on where exactly the vulnerability is.</span>

<span class="c1"></span>

1.  <span class="c1">The technical impact of a vulnerability could be severe</span>

<span class="c1"></span>

1.  <span class="c1">Because we could be talking about remote code execution and full access to a certain machine or a certain application</span>

<span class="c1"></span>

1.  <span class="c1"> We've got a little bit of a mixed bag here depending on what exactly your application does and what it uses</span>

<span class="c1"></span>

1.  <span class="c1">Some of these exploits can only really be done manually and although you do have automated tools which we'll look at a bit later</span>

<span class="c1"></span>

1.  <span class="c1">That can help you find some of these vulnerable components actually taking advantage of that</span>

<span class="c1"></span>

1.  <span class="c1">It is not always just hitting a button and taking advantage</span>

<span class="c1"></span>

1.  <span class="c1">There might be some extra work required to try and tailor or customize that attack for a particular system</span>

<span class="c1"></span>

1.  <span class="c1">When we talk about components with no vulnerabilities we've got some examples here</span>

<span class="c1"></span>

1.  <span class="c1">A very classic example is we use the software library and we either don't keep up to date with any vulnerabilities that might be found in that library.</span>

<span class="c1"></span>

1.  <span class="c1">Or sometimes we don't even consider them right at the beginning</span>

<span class="c1"></span>

1.  <span class="c1">We find a library to do a piece of functionality let's say for example to deserialize an XML document</span>

<span class="c1"></span>

1.  <span class="c1">If we don't have that built into our framework or built into the operating system we find a library online.</span>

<span class="c1"></span>

1.  <span class="c1">We use it and we don't even consider that there might already be a known vulnerability.</span>

<span class="c1"></span>

1.  <span class="c1">And very often that vulnerability might only include a very specific piece of functionality.</span>

<span class="c1"></span>

1.  <span class="c1">We might be able to switch these things off and disable stuff that we don't need.  
    </span>
2.  <span class="c1">If we use these libraries and we're not really keeping up to date with vulnerabilities</span>

<span class="c1"></span>

1.  <span class="c1">Then we  put ourselves at risk. A similar risk is when we use libraries from untrusted sources.</span>

<span class="c1"></span>

1.  <span class="c1">This can happen even if you're using a very popular framework.</span>

<span class="c1"></span>

1.  <span class="c1">It certainly happened to me in .NET experience when looking for something very specific and finding one library that's any good.  
    </span>
2.  <span class="c1">That seems to be fairly functional you might take that library without really thinking about who's written this library.  
    </span>
3.  <span class="c1">Is it somebody who knows how to write a secure piece of software is it from even a foreign government or something that could have questionable motives.  
    </span>
4.  <span class="c1">We can use libraries without thinking about the risk that we introduce but a maybe a more well-known scenario is using server software or components like your Apache web server like iOS like Nginx  
    </span>
5.  <span class="c1">Like anything else and especially since a lot of functionality might be enabled by default when we install these systems.  
    </span>
6.  <span class="c1">We're vulnerable not just to things that we are actually using and that we know that we're using but we're also vulnerable to systems that just happen to be turned on and we haven't switched them off.  
    </span>
7.  <span class="c1">It all comes back to knowing what versions of software we're using and whether they have known vulnerabilities and then  in some ways this can apply to anything.  
    </span>
8.  <span class="c1">Any component that you haven't specifically written could refer to a database engine, operating system, etc.  
    </span>
9.  <span class="c1">Any other components that we use outside of our main application are all potential risks and  some of them are ease to take advantage of than others  
    </span>
10.  <span class="c1">In most cases, anything that faces the public Internet is going to be more vulnerable than something like an operating system or a database engine which is generally going to be protected by other systems.  
    </span>
11.  <span class="c1">We do need to consider more than just libraries and our server software.  
    </span>
12.  <span class="c1">In general this is an issue when we have no process for monitoring and updating components our libraries our server software then we're vulnerable by definition because anything can have a vulnerability that gets discovered after the software has been released and so often we just don't have any  view of this in any consistent way.  
    </span>
13.  <span class="c1">We might have a good view of our main application but what about our business applications or  what about systems we don't use very much but still they're they're still visible to the Internet and they're still vulnerable  
    </span>
14.  <span class="c1">Anytime we don't have a process in place for regularly keep it on top of this then we're vulnerable  
    </span>
15.  <span class="c1">In terms of how common it is, we could probably say that pretty much every system that you will work on has a vulnerability somewhere.  
    </span>
16.  <span class="c1">In one or more of the components! Not only does it exist in many places like we mentioned earlier …  
    </span>
17.  <span class="c1">… databases or web servers or libraries of components or even online services but that said they won't all be exploitable  
    </span>
18.  <span class="c1">You might have, let's say, a vulnerability in your database engine but because that piece of functionality is not used in your application then there would be no way for an attacker to actually get to that piece of vulnerability to exploit it.  
    </span>
19.  <span class="c1">Not all vulnerabilities are equal. It will depend very much on your application and how much functionality is exposed.  
    </span>
20.  <span class="c1">How much is blocked off and how much is disabled.  
    </span>
21.  <span class="c1">We've got such a wide spectrum here from very obvious, very detectable, very easy to exploit.  
    </span>
22.  <span class="c1">Vulnerable is right through two vulnerabilities that are largely impossible to take advantage of and from the show a couple of examples really of how easy these things can be discovered.  
    </span>
23.  <span class="c13">The first one is a search engine called</span> <span class="c10">shodon</span><span class="c1"> and it's primarily designed for finding Internet of Things devices.  
    </span>
24.  <span class="c1">Shodon is linked from the OWASP top 10 document. If you want to find this link you can find it there and it's a historical report taken from 2016.  
    </span>

<a id="t.1ec78e84d291ad99ef53ed7c9e569508f93cbc6d"></a><a id="t.0"></a>

<table class="c26">

<tbody>

<tr class="c34">

<td class="c24" colspan="1" rowspan="1">

<span class="c11 c19">[https://www.shodan.io/report/89bnfUyJ](https://www.google.com/url?q=https://www.shodan.io/report/89bnfUyJ&sa=D&ust=1581704324007000)</span><span class="c11"> </span>

</td>

</tr>

</tbody>

</table>

<span class="c1"></span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 302.67px;">![](images/image9.png)</span>

<span class="c1"></span>

1.  <span class="c1">It reports devices that are vulnerable to the heartbleed vulnerability. This was a major vulnerability you can see there at CVE 2014 - 0-1-6-0\.  
    </span>
2.  <span class="c1">Heartbleed was a way to take advantage of SSL encryption and potentially - to hijack the encrypted data.</span>

<span class="c1"></span>

1.  <span class="c1">You can see there that in 2016 nearly 60,000 sites that were found that were vulnerable just in the United States alone.  
    </span>
2.  <span class="c1">We're talking about loads of sites probably very often sites that were forgotten about or maybe they were set up five years ago and not actively maintained.  
    </span>
3.  <span class="c1">You can see the amount of vulnerability just from one single issue and this is purely from a search engine.  
    </span>
4.  <span class="c13">What Shodon is often used for is to search for</span> <span class="c13">things like webcams</span><sup>[[a]](#cmnt1)</sup><span class="c1">. You can see the various countries it finds information and it tries to ping things it thinks are webcams.</span>

<span class="c1"></span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 264.00px;">![](images/image1.png)</span><span class="c1">  
</span>

1.  <span class="c1">This one's in United Kingdom amol bruh and you can open this in another tab I'm not going to do it because I don't know I don't know what's there although that's a Raspberry Pi  
    </span>
2.  <span class="c1">It's probably nothing terrible but it's as easy as this to find public information on services that are running on the public Internet.  
    </span>
3.  <span class="c1">That's one example of how an attacker might look for something very specific.  
    </span>
4.  <span class="c1">That report we were looking at is actually a type of search where you can search for a vulnerability.  
    </span>
5.  <span class="c1">Specifically and then what shodon will do is it will find versions of web servers or whatever that it knows to be vulnerable and it will return that in the results.  
    </span>
6.  <span class="c1">You do have to register if you want to use vulnerability searching but  if you were a criminal or whatever you would probably pay that money to get the power of shodon and other tools.  
    </span>
7.  <span class="c7">That's one example another example is basically a scanning tool  
    </span>
8.  <span class="c7">There are several there probably ten or twenty fairly widely used vulnerability scanning tools.  
    </span>
9.  <span class="c7">These are tools that are more likely to be used on an internal network or as part of a formal pen test.  
    </span>
10.  <span class="c7">We could look across multiple machines across subnets we could be looking inside a company Network.  
    </span>
11.  <span class="c7">Let's ignore the firewall for now and let's assume we're inside.</span>
12.  <span class="c7">Are we still vulnerable inside because as we know people are often very good at putting strong firewalls in place for external attacks …  
    </span>
13.  <span class="c7">… but don't necessarily consider the types of attacks that could come from inside the network.  
    </span>
14.  <span class="c7">One of these is openvz which is a suite of tools made by a company called Green bone  
    </span>
15.  <span class="c7">I'm just going to show you an example of going to is a Kali Linux VM I'm running on my host machine and into here.  
    </span>
16.  <span class="c7">I've already run a vulnerability scan on the host machine. This is the virtual machine and I've run this against the host.  
    </span>
17.  <span class="c35 c13">That's my internal IP address there</span> <span class="c10 c35">102 168 56 1</span> <span class="c7">and as I've scanned this.  
    </span>
18.  <span class="c35 c13">It's</span> <span class="c13 c35">only found a single vulnerability</span> <sup>[[b]](#cmnt2)</sup><span class="c7">which is probably not very surprising. I have a simple desktop machine  not running hundreds of services.  
    </span>
19.  <span class="c7">Even here it's already found one vulnerability. One it considers a medium risk and if I click on this report log in again you can see it's listing a vulnerability.  
    </span>
20.  <span class="c7">This is our PC enumeration and what this is is a port where you can go to a Windows machine and say what distributed comm operations are running on this machine and it will tell you what they all are.  
    </span>
21.  <span class="c7">It's not necessarily a terrible vulnerability. In this case, this would only be visible from my internal network and might tell me there's a printer service running.  
    </span>
22.  <span class="c7">Stuff like that if that was a problem  I could close this port down on the firewall run the scan again and make sure it's not vulnerable.  
    </span>
23.  <span class="c7">These can take a significant amount of time because they're searching through lots of vulnerabilities lots of pieces of software we're talking about  thousands of entries.  
    </span>
24.  <span class="c7">What will often happen is people will set these up and maybe leave them running overnight.  
    </span>
25.  <span class="c7">Especially if they're running against an entire network and in an enterprise situation you could have hundreds of desktop machines and servers.  
    </span>
26.  <span class="c7">It might only be one or two of them that are running some unexpected software or some old versions that a tool like this can pick up on Hanken and can show you what's going on.  
    </span>
27.  <span class="c35 c13">That's the way a professional pen tester would approach vulnerability scanning.</span><span class="c13">  
    </span><sup>[[c]](#cmnt3)</sup>
28.  <span class="c1">When we talk about fixing it I mean knowing there are vulnerabilities and keeping up to date.</span>

<span class="c1"></span>

1.  <span class="c1">The very first one we've seen several times now in the top ten remove anything that you don't need.  
    </span>
2.  <span class="c1">If you've got components in your application and you're not sure what they're for then find out whether you can just remove them.  
    </span>
3.  <span class="c1">Does your application still build and run? Depending on your application that might be easy or not.  
    </span>
4.  <span class="c1">Any dependencies on external services on external servers might be some of these things that you could only really to be wired up when we're running a backup, for example.  
    </span>
5.  <span class="c1">Maybe we can leave it disabled most of the time and only switch it on for backups.  
    </span>
6.  <span class="c13">Removing the</span> <span class="c10">attack surface</span><span class="c13">always makes things better and then using</span> <span class="c10">tooling</span><span class="c1"> to automate version management.  
    </span>
7.  <span class="c1">This is a massive subject but every platform (Windows, Linux, Mac, etc.) has tools that can give you a network-wide view of what versions are software are running.  
    </span>
8.  <span class="c1">Particularly you are looking for web servers, any public accessible services like publicly visible databases, etc.    
    </span>
9.  <span class="c13">When I use the word</span> <span class="c10">public</span><span class="c1"> I mean services visible on the network rather than just an internal service on a single machine.  
    </span>
10.  <span class="c1">You could use tooling like that which you have to pay for but it's giving you insight into your system.  
    </span>
11.  <span class="c1">Not only could software be out of date but you probably want to know that as well.  
    </span>
12.  <span class="c1">To know if all of the versions of software you're using certainly the ones that are visible to a scanning tool are vulnerable.  
    </span>
13.  <span class="c1">It doesn't work against things like software libraries because the versions of software libraries are not visible generally to the public network.  
    </span>
14.  <span class="c1">You could consider a health check page on your applications which Kurds are perhaps producing JSON data which your scanning tools might be able to consume.  
    </span>
15.  <span class="c1">Then know you're using this version of Apache and that version of .NET or whatever it might be.  
    </span>
16.  <span class="c1">NOTE: this is very similar to a concept in web performance metrics and, in fact, really must be part of every web developers practice.  
    </span>
17.  <span class="c13">I’ll spend some time on this during the course.</span> <span class="c17 c13">[https://developers.google.com/web/tools/lighthouse/audits/budgets](https://www.google.com/url?q=https://developers.google.com/web/tools/lighthouse/audits/budgets&sa=D&ust=1581704324014000)</span><span class="c13">,</span> <span class="c17 c13">[https://www.uptrends.com/what-is/Web-Performance-Monitoring](https://www.google.com/url?q=https://www.uptrends.com/what-is/Web-Performance-Monitoring&sa=D&ust=1581704324014000)</span><span class="c1">,</span>

<span class="c17 c13">[https://www.verizondigitalmedia.com/blog/better-website-security-for-enhanced-web-performance/](https://www.google.com/url?q=https://www.verizondigitalmedia.com/blog/better-website-security-for-enhanced-web-performance/&sa=D&ust=1581704324015000)</span><span class="c1">  
</span>

<span class="c13">(this may not fit here but it is a topic we should consider preparing for.  I checked the gtmetrix score of</span> <span class="c13 c17">[www.icao.int](https://www.google.com/url?q=http://www.icao.int&sa=D&ust=1581704324015000)</span><span class="c1"> and its 21% for desktop.)</span>

<span class="c1"></span>

1.  <span class="c1">Using tooling really is the big one here to automate this as much as possible  you should try and only use legitimate libraries.  
    </span>
2.  <span class="c1">There's a trust issue when you use anything from a third party you can never be completely sure.  
    </span>
3.  <span class="c13">If you use libraries component services from a vendor especially one that you're</span> <span class="c13">paying</span><sup>[[d]](#cmnt4)</sup><span class="c1"> for there's a better chance that you're getting a commercial deal and not just somebody trying to sell a library that has vulnerabilities in it …    
    </span>
4.  <span class="c1">… or somebody who's  glued something together in their spare time but which doesn't work well and which causes a security problem for you later on.  
    </span>
5.  <span class="c1">the more legitimate you can use the better and  we've got to get used to paying for things paying for quality you can get good stuff for free but you can't always get what you need for free  
    </span>
6.  <span class="c1">Sometimes we need to pay to get that level of trust. Perhaps what we’re looking for in this relationship is the feeling of trust that comes with financial accountability.  
    </span>
7.  <span class="c1">We then need to have a policy and a process for unmaintained components.  
    </span>
8.  <span class="c1">If you've got something there that's an old library that's not maintained anymore what are you going to do about that because you're not going to be able to patch something that's not being maintained and probably more importantly you're possibly not going to know about any vulnerabilities that exist in that because in general it's going to be the maintainer of a component that are likely to be aware of vulnerabilities because usually they would be told by anybody who discovers the vulnerability  
    </span>
9.  <span class="c1">you could have a policy of process that says  we're not going to use our maintain components or we're going to  hide them from the public Internet or the next point here is you can deploy additional controls  
    </span>
10.  <span class="c1">you could say well although this component of my web server isn't maintained anymore if I put another firewall in front of my web server that has some extra functionality I might be able to filter the types of attack attack data that is actually going to take advantage of the vulnerability  
    </span>
11.  <span class="c1">by adding additional controls additional levels of  depth then I might be able to mitigate some of the risk from things that I can't patch we've mentioned this before as well in terms of vulnerable components if you've got something that needs to carry out an action on the operating system or do something maybe a little bit more privileged consider using sandboxing  
    </span>
12.  <span class="c1">using a virtual machine using a another machine another server to try and keep the risky part of the operation away from the rest of the application or away from the database or away from the rest of the network  
    </span>
13.  <span class="c1">at least then if somebody does take advantage you're exposing the minimal and minimum amount of data that you can and for example if somebody takes over your sandbox term machine then they're not going to be able to see a database because there's going to be no connection they're to the database server  
    </span>
14.  <span class="c1">you might be able to do something with that depending on what you're doing another one is about consistency  
    </span>
15.  <span class="c1">particularly as soon as your company is more than about 10 or 20 people the number of pieces of equipment you have just starts going up  in a crazy fashion some large enterprises probably have  five machines for every employee they have  
    </span>
16.  <span class="c1">you could be talking about thousands and thousands of deaths desktops and servers and telephone exchanges and security systems  any other special equipment SCADA systems IOT all of these things that are all sitting on the network somewhere  
    </span>
17.  <span class="c1">having consistency makes your life easier and what one example of using that is having continuous deployment of of your production systems  
    </span>
18.  <span class="c1">that when you push a new deployment  that the versions of Apache are the same the versions of.net of PHP whatever it is you're using are always the same  
    </span>
19.  <span class="c1">then when you need to make an update you only need to update one script in your CD system and then  that all environments from that point onwards are  going to be using the the new the new version but the same algoes for every other system you deploy how you're going to keep that consistency how are you going to make sure that you don't deploy an old version of PHP because you haven't gone back to that server and touched it for five years  
    </span>
20.  <span class="c1">there's lots of this is processed lots of its tooling it's all going to be fairly complicated and probably worth sending somebody on some decent training for just to make sure that you've got that visibility and another maybe more modern way way of mitigating the risk is to consider transferring the risk to software as a service  
    </span>
21.  <span class="c1">that you don't have to maintain underlying operating systems or versions of software  
    </span>
22.  <span class="c1">for example if you run Redis cache on your own machine you've got to maintain your prezi system you've got to maintain the version of Rhenish and any other dependencies it has if you were to use say as your reddish or AWS ready then it's up to the cloud provider to manage the OS and its updates and it's up to them to manage the version of Redis and all its dependencies  
    </span>
23.  <span class="c1">You get to transfer the risk to somebody who's probably set up better than you are to manage those versions and to avoid those vulnerabilities  
    </span>
24.  <span class="c1">nothing really again very specific we can say here this is quite a general general topic quite a general thing to consider but probably this is going to be one of the the more complicated and long-winded implementations for you because it does is going to consist of tooling of different people in different departments in charge of different parts of your overall infrastructure and all of the  the subtleties and details involved there but as with all of these don't be put off by the amount of work having something is better than having nothing if 90% of your infrastructure is brilliant and you can't really deal with the other 10%  then that's better than not dealing with all of it  
    </span>
25.  <span class="c1"> try by starting and doing something you'll soon learn the ways in which this stuff works and doesn't work  
    </span>
26.  <span class="c13"> that's it for a nine again reminder please read the top ten publications some of the links that I've used are in that some of the cheat sheets and the explanations and everything are all in their search for a wasp top ten on your favorite search engine and you'll find hopefully what you need to find out any questions or comments please Chuck them on the video below otherwise I will see you in the next video  </span>

<span class="c1"></span>

<span class="c10 c16">A9 – Using Components with Known Vulnerabilities</span><span class="c16 c25"> </span><span class="c28 c10 c16">Exercise</span>

<span class="c3"></span>

1.  <span class="c3">JQuery html method is vulnerable to DOM-Based XSS vulnerability  
    </span>
2.  <span class="c16 c13">This is an exercise about how to exploit and prevent the vulnerability.</span> <span class="c10 c16">Go to Demo Page.</span><span class="c3">  
    </span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 268.00px;">![](images/image6.png)</span>

1.  <span class="c3">We have two buttons, unsecured and secured submit.  
    </span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 392.47px;">![](images/image3.png)</span>

1.  <span class="c3">Then we have three outputs that compares three methods, innerHTML, html, and text.  
    </span>
2.  <span class="c3">innerHTML: The HTML5 spec states that script tags inserted via innerHTML will not be executed.  
    </span>
3.  <span class="c3">Html: jQuery DOM methods strip and eval() any script tags passed in, exposing an XSS vulnerability.  
    </span>
4.  <span class="c3">Text: This method treats the passed string as a textNode, preventing it from being executed by the browser.  
    </span>
5.  <span class="c3">Now let’s go and start its demo, Let’s click submit unsecured.  
    </span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 227.33px;">![](images/image12.png)</span>

1.  <span class="c3">Let’s Comparing the three methods  
    </span>
2.  <span class="c3">Nothing appeared in the output of innerHTML, which means it’s not vulnerable to such exploits.  
    </span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 113.07px;">![](images/image11.png)</span><span class="c13">  
</span>

1.  <span class="c3">While output of html have successfully been exploited and the script have succeeded.  
    </span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 198.33px;">![](images/image4.png)</span><span class="c13">  
</span>

1.  <span class="c3">And the output of text, prints out the script in text, which means it’s also not vulnerable to such exploits.</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 126.60px;">![](images/image8.png)</span>

<span class="c16 c37">Solution</span><span class="c3">  
</span>

1.  <span class="c10 c16 c28">Goto /Views/Home/Demo.cshtml</span>

<span class="c3"></span>

1.  <span class="c16 c13">I have</span><span class="c3"> created hoganEscape method and applied it on Submit Secured Button onclick</span>

<span class="c3"></span>

1.  <span class="c3">Let’s review hoganEscape logic.</span>

<span class="c3"></span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 370.00px; height: 347.00px;">![](images/image2.png)</span><span class="c3">  
</span>

1.  <span class="c3">Then we can use the method to escape the input value on submission in Submit Secured button..  
    </span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 358.00px; height: 190.00px;">![](images/image10.png)</span><span class="c13">  
</span>

1.  <span class="c3">Now try clicking submit secured, the script should not perform. But instead, paste the whole text in their respective output boxes.  
    </span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 214.53px;">![](images/image5.png)</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 393.47px;">![](images/image7.png)</span>

<span class="c1"></span>

<div class="c32">

[[a]](#cmnt_ref1)<span class="c0">+mark.raymer@anomalistdesign.com I'm editing this "just in case" I need it. I notice he talks about Shodon here and maybe you can take this as an idea for an example in OSINT?</span>

<span class="c0">_Assigned to Mark Raymer_</span>

</div>

<div class="c32">

[[b]](#cmnt_ref2)<span class="c0">this one may be hard to replicate.</span>

</div>

<div class="c32">

[[c]](#cmnt_ref3)<span class="c0">no demo for the red lines</span>

</div>

<div class="c32">

[[d]](#cmnt_ref4)<span class="c0">+pete@anomalistdesign.com I do not share his confidence that pay equals secure.  I think I'd like that blunted here.</span>

</div>

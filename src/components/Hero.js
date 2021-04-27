/* eslint-disable */
import React, {useEffect, useState} from 'react';
import { UncontrolledCollapse } from 'reactstrap'

const EMAIL = 'jarrett@thestyl.us';

const Hero = () => {
  const [email, setEmail]= useState(null);

  useEffect(() =>setEmail(EMAIL),[])

  return(
  <>
  <div className="hero">
  <h1 className="author">Jarrett Drouillard</h1>

  <ul className="links list-block list-inline">
    <li><a href="http://twitter.com/kuatsure" className="ss-icon ss-social">twitter</a></li>

    <li><a href="http://github.com/kuatsure" className="ss-icon ss-social">octocat</a></li>

    <li><a id="aboutMe" title="About Me" className="ss-icon ss-standard">user</a></li>
  </ul>
</div>
<UncontrolledCollapse toggler="#aboutMe" className="main">
  <div className="flag flag--top flag--rev">
    <div className="flag__img"><img src="https://s.gravatar.com/avatar/6ed4152e87cc06be69a22817ba93aaa5?s=300" alt="{{site.author.name}}" /></div>

    <div className="flag__body">
      <h2>About Me</h2>

      <p>I'm a Lead UX developer working with the awesome dev &amp; design people of <a href="http://topgunhq.com/">Top Gun</a> located in the Queen City.</p>

      <p>I've had my hand in projects such as Prevail, <a href="http://hapzing.com">Hapzing</a> and many different open source projects: <a href="http://github.com/kuatsure/generator-skeletor">yo skeletor</a>, a <a href="https://github.com/kuatsure/symbolset-all">suite of bower components</a> for the Symbolset font library, and <a href="https://github.com/kuatsure/helpful-helpers">helpful helpers</a> a mini Sass mixin/class library; just to name a few.</p>

      <p>I'm always learning new things in my field. Right now I'm loving <a href="https://angularjs.org/">angular</a>, and OOCSS. Looking into <a href="https://facebook.github.io/react/">react</a>, <a href="http://emberjs.com/">ember</a>, <a href="http://jekyllrb.com">jekyll</a>, and <a href="http://assemble.io">assemble</a>.</p>

      <p>Want to talk? You can find me as <a href="http://twitter.com/kuatsure">@kuatsure</a> on twitter, email me at <a className="js-email-btn" href={'mailto:'+email}>{email}</a>, or on any of these <a href="https://github.com/kuatsure/irc-channels">IRC channels on #freenode</a>.</p>

      <a className="btn btn--positive js-freelance-btn">I'm currently accepting freelance projects.</a>
    </div>
  </div>
</UncontrolledCollapse>
</>
);
  }

export default Hero;

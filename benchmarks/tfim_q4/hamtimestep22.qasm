OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(0.107809041472285,1.57079632679490,4.71238898038469) q[0];
u3(0.107809041472285,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.106927092181411,1.57079632679490,4.71238898038469) q[0];
u3(0.107809041472285,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.106927092181411,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.105170408528403,1.57079632679490,4.71238898038469) q[0];
u3(0.107809041472285,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.106927092181411,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.105170408528403,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.102553361347848,1.57079632679490,4.71238898038469) q[0];
u3(0.106927092181411,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.105170408528403,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.102553361347848,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0990973598172459,1.57079632679490,4.71238898038469) q[0];
u3(0.105170408528403,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.102553361347848,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0990973598172459,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0948306763157745,1.57079632679490,4.71238898038469) q[0];
u3(0.102553361347848,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0990973598172459,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0948306763157745,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0897882151375187,1.57079632679490,4.71238898038469) q[0];
u3(0.0990973598172459,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0948306763157745,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0897882151375187,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0840112269512500,1.57079632679490,4.71238898038469) q[0];
u3(0.0948306763157745,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0897882151375187,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0840112269512500,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0775469713426640,1.57079632679490,4.71238898038469) q[0];
u3(0.0897882151375187,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0840112269512500,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0775469713426640,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0704483301997006,1.57079632679490,4.71238898038469) q[0];
u3(0.0840112269512500,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0775469713426640,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0704483301997006,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0627733751037106,1.57079632679490,4.71238898038469) q[0];
u3(0.0775469713426640,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0704483301997006,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0627733751037106,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0545848922654995,1.57079632679490,4.71238898038469) q[0];
u3(0.0704483301997006,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0627733751037106,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0545848922654995,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0459498688925741,1.57079632679490,4.71238898038469) q[0];
u3(0.0627733751037106,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0545848922654995,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0459498688925741,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0369389451894688,1.57079632679491,4.71238898038468) q[0];
u3(0.0545848922654995,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0459498688925741,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0369389451894688,1.57079632679491,4.71238898038468) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0276258364741405,1.57079632679490,4.71238898038469) q[0];
u3(0.0459498688925741,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0369389451894688,1.57079632679491,4.71238898038468) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0276258364741405,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0180867301378733,1.57079632679490,4.71238898038469) q[0];
u3(0.0369389451894688,1.57079632679491,4.71238898038468) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0276258364741405,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0180867301378733,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.00839966238203300,1.57079632679490,4.71238898038469) q[0];
u3(0.0276258364741405,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0180867301378733,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.00839966238203300,1.57079632679490,4.71238898038469) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.00135612016967658,-1.57079632679490,1.57079632679490) q[0];
u3(0.0180867301378733,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.00839966238203300,1.57079632679490,4.71238898038469) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.00135612016967658,-1.57079632679490,1.57079632679490) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0111008087612052,-1.57079632679490,1.57079632679490) q[0];
u3(0.00839966238203300,1.57079632679490,4.71238898038469) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.00135612016967658,-1.57079632679490,1.57079632679490) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0111008087612052,-1.57079632679490,1.57079632679490) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0207546853921886,-1.57079632679490,1.57079632679490) q[0];
u3(0.00135612016967658,-1.57079632679490,1.57079632679490) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0111008087612052,-1.57079632679490,1.57079632679490) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0207546853921886,-1.57079632679490,1.57079632679490) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0302387749643765,-1.57079632679490,1.57079632679490) q[0];
u3(0.0111008087612052,-1.57079632679490,1.57079632679490) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0207546853921886,-1.57079632679490,1.57079632679490) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0302387749643765,-1.57079632679490,1.57079632679490) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0394754913499333,-1.57079632679490,1.57079632679490) q[0];
u3(0.0207546853921886,-1.57079632679490,1.57079632679490) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0302387749643765,-1.57079632679490,1.57079632679490) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0394754913499333,-1.57079632679490,1.57079632679490) q[1];
cx q[0],q[1];
u1(-0.107919454522251) q[1];
cx q[0],q[1];
u3(0.0302387749643765,-1.57079632679490,1.57079632679490) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
u3(0.0394754913499333,-1.57079632679490,1.57079632679490) q[2];
cx q[1],q[2];
u1(-0.107919454522251) q[2];
cx q[1],q[2];
u3(0.0394754913499333,-1.57079632679490,1.57079632679490) q[3];
cx q[2],q[3];
u1(-0.107919454522251) q[3];
cx q[2],q[3];
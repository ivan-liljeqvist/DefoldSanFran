varying mediump vec4 position;
varying mediump vec2 var_texcoord0;

uniform lowp sampler2D DIFFUSE_TEXTURE;
uniform lowp vec4 tint;

uniform lowp vec4 windowSize;
uniform lowp vec4 heroRelativePosition;
uniform lowp vec4 time;



void main()
{
  
    
    float screenWidth=windowSize.x;
    float screenHeight=windowSize.y;
    
    float xPos=var_texcoord0.x;
    float yPos=var_texcoord0.y;
    
    float heroRelX=heroRelativePosition.x*0.7;
    float heroRelY=heroRelativePosition.y*0.6;
    float dist=length(vec2(heroRelX,heroRelY)-var_texcoord0.xy);
    
    float brightness=dist*2.0;
    
    float timeVar=time.x;
    
    if(brightness<=0.13){
    	brightness=0.13;
    }

    gl_FragColor = vec4(0.0,0.0,0.0,brightness);
}



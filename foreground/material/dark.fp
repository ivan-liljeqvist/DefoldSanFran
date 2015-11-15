varying mediump vec4 position;
varying mediump vec2 var_texcoord0;

uniform lowp sampler2D DIFFUSE_TEXTURE;
uniform lowp vec4 tint;

uniform lowp vec4 windowSize;
uniform lowp vec4 heroRelativePosition;



void main()
{
  
    
    float screenWidth=windowSize.x;
    float screenHeight=windowSize.y;
    
    float xPos=var_texcoord0.x;
    float yPos=var_texcoord0.y;
    
    float heroRelX=heroRelativePosition.x*0.7;
    float heroRelY=heroRelativePosition.y*0.7;
    float dist=length(vec2(heroRelX,heroRelY)-var_texcoord0.xy);
    
    

    gl_FragColor = vec4(0.0,0.0,0.0,dist*2.0);
}



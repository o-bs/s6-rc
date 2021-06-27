/* ISC license. */

#ifndef S6RCD_TRANSITION_H
#define S6RCD_TRANSITION_H

#include <sys/types.h>
#include <stdint.h>


 /* Transitions */

typedef struct transition_s transition_t, *transition_t_ref ;
struct transition_s
{
  pid_t pid ;
  uint32_t service ;
  uint8_t updown : 1 ;
} ;
#define TRANSITION_ZERO { .pid = 0, .service = 0,  }

extern uint32_t ntransitions ;
transitions_t *transitions ;

#endif

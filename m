import pygame, sys
import time
import random
import math

pygame.init()
red = (255, 0, 0)
whites = (252, 252, 252)
black = (3, 3, 3)
skin = (255, 211, 155)

SIZE = [1350, 720]
screen = pygame.display.set_mode(SIZE)


def Fexintro():
    basicfont = pygame.font.SysFont(None, 48)
    text = basicfont.render('Jump over the obstacles to get points. Good Luck!', True, black, (255, 255, 255))
    textrect = text.get_rect()
    textrect.centerx = screen.get_rect().centerx
    textrect.centery = screen.get_rect().centery
    screen.blit(text, textrect)
    pygame.display.update()

def exheadbody():
    pygame.draw.circle(screen, skin, [650, 150], 100, 0)
    pygame.draw.line(screen, skin, [650, 100], [650,500],30)
    #The torso of the body
def exfacehappy():
    pygame.draw.circle(screen, black, [600, 150], 10, 0)
    pygame.draw.circle(screen, black, [690, 150], 10, 0)
    pygame.draw.arc(screen, black,[625, 150, 50, 50], math.pi , 0, 3)
def exfacesad():
    pygame.draw.circle(screen, black, [600, 150], 10, 0)
    pygame.draw.circle(screen, black, [690, 150], 10, 0)
    pygame.draw.arc(screen, black, [625, 150, 50, 50], 0, math.pi, 3)
def exfacenorm():
    pygame.draw.circle(screen, black, [600, 150], 10, 0)
    pygame.draw.circle(screen, black, [690, 150], 10, 0)
    pygame.draw.line(screen, black, [620, 175], [675,175],5)
def exarms():
    pygame.draw.line(screen, skin, [650, 250], [500,400], 10)
    pygame.draw.line(screen, skin, [650, 250], [800,400], 10)
    pygame.draw.circle(screen, skin, [500,400], 20, 0)
    pygame.draw.circle(screen, skin, [800,400], 20, 0)
    #Stick arms including the hands
def exarmsup():
    pygame.draw.line(screen, skin, [650, 300], [500,200], 10)
    pygame.draw.line(screen, skin, [650, 300], [800,200], 10)
    pygame.draw.circle(screen, skin, [500,200], 20, 0)
    pygame.draw.circle(screen, skin, [800,200], 20, 0)
def exlegs():
    pygame.draw.line(screen, skin, [645,500],[600,700],20)
    pygame.draw.line(screen, skin, [655, 500], [695, 700], 20)


# The intro function for the exercise game, played before game starts



def timer():
    font = pygame.font.SysFont('Comic Sans MS', 25)
    frame_count = pygame.time.get_ticks()
    frame_rate = 17
    start_time = 2200

    total_seconds = start_time - (frame_count // frame_rate)

    if total_seconds < 0:
        total_seconds = 0
    minutes = total_seconds // 60
    seconds = total_seconds % 60
    output_string = "Time left: {}".format(minutes)
    text = font.render(output_string, True, (0, 0, 0))
    screen.blit(text, [50, 50])
    frame_count += 1

    while minutes == 0:
        pygame.quit()


done = False
while not done:  # main program loop
    for event in pygame.event.get():  # user did something
        if event.type == pygame.QUIT:  # if user clicked close
            done = True  # flag to exit loop
    screen.fill(whites)
    timer()
    squat = 'squat'
    jump = 'jump'
    left = 'left'
    right = 'right'
    words1 = [squat, jump, left, right]
    a = random.choice(words1)

    totexscore = int(0)
    if totexscore <= 10:
        basicfont = pygame.font.SysFont(None, 48)
        text = basicfont.render(a, True, black, whites)
        textrect = text.get_rect()
        textrect.centerx = screen.get_rect().centerx
        screen.blit(text, textrect)
        time.sleep(-time.time() % 1)

        events = pygame.event.get()
        for event in events:
            if event.type == pygame.KEYDOWN:
                if a == 'left' and event.key == pygame.K_LEFT:
                    totexscore -= 1
                    print(totexscore)
                if a == 'left' and event.key != pygame.K_LEFT:
                    totexscore += 1
                    print(totexscore)
                if a == 'right' and event.key == pygame.K_RIGHT:
                    totexscore -= 1
                    print(totexscore)
                if a == 'jump' and event.key != pygame.K_RIGHT:
                    totexscore += 1
                    print( totexscore)
                if a == 'jump' and event.key == pygame.K_UP:
                    totexscore -= 1
                    print( totexscore)
                if a == 'jump' and event.key != pygame.K_UP:
                    totexscore += 1
                    print(totexscore)
                if a == 'squat' and event.key == pygame.K_DOWN:
                    totexscore -= 1
                    print( totexscore)
                if a == 'squat' and event.key != pygame.K_DOWN:
                    totexscore += 1
                    print(totexscore)
    if totexscore > 10 and totexscore <= 20:
        basicfont = pygame.font.SysFont(None, 48)
        text = basicfont.render(a, True, black, whites)
        textrect = text.get_rect()
        textrect.centerx = screen.get_rect().centerx
        screen.blit(text, textrect)
        time.sleep(-time.time() % 0.5)

        events = pygame.event.get()
        for event in events:
            if event.type == pygame.KEYDOWN:
                if a == 'left' and event.key == pygame.K_LEFT:
                    totexscore -= 1
                    print(totexscore)
                if a == 'left' and event.key != pygame.K_LEFT:
                    totexscore += 1
                    print(totexscore)
                if a == 'right' and event.key == pygame.K_RIGHT:
                    totexscore -= 1
                    print(totexscore)
                if a == 'jump' and event.key != pygame.K_RIGHT:
                    totexscore += 1
                    print(totexscore)
                if a == 'jump' and event.key == pygame.K_UP:
                    totexscore -= 1
                    print(totexscore)
                if a == 'jump' and event.key != pygame.K_UP:
                    totexscore += 1
                    print(totexscore)
                if a == 'squat' and event.key == pygame.K_DOWN:
                    totexscore -= 1
                    print(totexscore)
                if a == 'squat' and event.key != pygame.K_DOWN:
                    totexscore += 1
                    print(totexscore)
    if totexscore > 20:
        basicfont = pygame.font.SysFont(None, 48)
        text = basicfont.render(a, True, black, whites)
        textrect = text.get_rect()
        textrect.centerx = screen.get_rect().centerx
        screen.blit(text, textrect)
        time.sleep(-time.time() % 0.25)

        events = pygame.event.get()
        for event in events:
            if event.type == pygame.KEYDOWN:
                if a == 'left' and event.key == pygame.K_LEFT:
                    totexscore -= 1
                    print(totexscore)
                if a == 'left' and event.key != pygame.K_LEFT:
                    totexscore += 1
                    print(totexscore)
                if a == 'right' and event.key == pygame.K_RIGHT:
                    totexscore -= 1
                    print(totexscore)
                if a == 'jump' and event.key != pygame.K_RIGHT:
                    totexscore += 1
                    print(totexscore)
                if a == 'jump' and event.key == pygame.K_UP:
                    totexscore -= 1
                    print(totexscore)
                if a == 'jump' and event.key != pygame.K_UP:
                    totexscore += 1
                    print(totexscore)
                if a == 'squat' and event.key == pygame.K_DOWN:
                    totexscore -= 1
                    print(totexscore)
                if a == 'squat' and event.key != pygame.K_DOWN:
                    totexscore += 1
                    print(totexscore)
    pygame.display.flip()

.class public Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
.super Ljava/lang/Object;
.source "VirtualInputDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;,
        Lcom/parrot/freeflight/gamepad/VirtualInputDevice$TriggerEventListener;,
        Lcom/parrot/freeflight/gamepad/VirtualInputDevice$JoystickEventListener;
    }
.end annotation


# instance fields
.field private final mEventSender:Lcom/parrot/freeflight/gamepad/EventSender;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadEventListener:Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

.field private final mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/gamepad/EventSender;)V
    .locals 2
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventSender"    # Lcom/parrot/freeflight/gamepad/EventSender;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$1;-><init>(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    .line 73
    new-instance v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;-><init>(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadEventListener:Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 32
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mEventSender:Lcom/parrot/freeflight/gamepad/EventSender;

    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->addStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadEventListener:Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->addEventListener(Lcom/parrot/freeflight/gamepad/GamePad$EventListener;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->notifyChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/EventSender;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mEventSender:Lcom/parrot/freeflight/gamepad/EventSender;

    return-object v0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    .line 60
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;
    invoke-interface {v0, p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;->onChange(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V

    goto :goto_0

    .line 62
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 44
    invoke-interface {p1, p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;->onChange(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V

    .line 45
    return-void
.end method

.method protected close()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadEventListener:Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeEventListener(Lcom/parrot/freeflight/gamepad/GamePad$EventListener;)V

    .line 56
    return-void
.end method

.method public getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method protected removeListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

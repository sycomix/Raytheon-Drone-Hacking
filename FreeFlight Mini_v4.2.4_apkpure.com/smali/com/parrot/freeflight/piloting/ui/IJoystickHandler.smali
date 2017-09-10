.class public abstract Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;
.super Ljava/lang/Object;
.source "IJoystickHandler.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;
.implements Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;",
        "Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;, "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract pause()Z
.end method

.method public abstract setJoysticks(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .param p1    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setOnlineMode(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract updateModel(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract updatePilotingControllerType(Landroid/content/SharedPreferences;)V
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

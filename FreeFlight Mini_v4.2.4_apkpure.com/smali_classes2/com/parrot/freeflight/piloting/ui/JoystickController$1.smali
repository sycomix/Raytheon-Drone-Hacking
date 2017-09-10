.class Lcom/parrot/freeflight/piloting/ui/JoystickController$1;
.super Ljava/lang/Object;
.source "JoystickController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/JoystickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;

    .prologue
    .line 68
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController$1;, "Lcom/parrot/freeflight/piloting/ui/JoystickController$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController$1;, "Lcom/parrot/freeflight/piloting/ui/JoystickController$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->access$100(Lcom/parrot/freeflight/piloting/ui/JoystickController;)Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getPilotingTypePreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->access$200(Lcom/parrot/freeflight/piloting/ui/JoystickController;)Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->updatePilotingControllerType(Landroid/content/SharedPreferences;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->access$100(Lcom/parrot/freeflight/piloting/ui/JoystickController;)Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getLeftHandnessPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->updateLeftHandedMode(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

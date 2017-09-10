.class Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$4;
.super Ljava/lang/Object;
.source "DelosJoystickSettingsViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setControllerType(I)V

    .line 105
    return-void
.end method

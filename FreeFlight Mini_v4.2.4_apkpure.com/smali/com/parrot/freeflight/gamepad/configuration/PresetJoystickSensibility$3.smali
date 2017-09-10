.class Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$3;
.super Ljava/lang/Object;
.source "PresetJoystickSensibility.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->onBackPressed()V

    .line 109
    return-void
.end method

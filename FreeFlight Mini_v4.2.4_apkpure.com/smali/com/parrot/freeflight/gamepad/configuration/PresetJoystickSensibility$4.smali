.class Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$4;
.super Ljava/lang/Object;
.source "PresetJoystickSensibility.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


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
    .line 128
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->access$400(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)V

    .line 132
    return-void
.end method

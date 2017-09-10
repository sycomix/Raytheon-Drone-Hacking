.class Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$4;
.super Ljava/lang/Object;
.source "JoystickSensibilityActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->access$700(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)V

    .line 186
    return-void
.end method

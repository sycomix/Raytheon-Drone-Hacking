.class Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$3;
.super Ljava/lang/Object;
.source "JoystickSensibilityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 152
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->onBackPressed()V

    .line 156
    return-void
.end method

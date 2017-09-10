.class Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;
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
    .line 135
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->access$000(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;Z)V

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->access$500(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->isImitateViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->access$000(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;Z)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->access$500(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->access$200(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->access$600(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->access$400(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;II)V

    .line 143
    return-void
.end method

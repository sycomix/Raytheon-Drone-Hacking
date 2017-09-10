.class Lcom/parrot/freeflight/core/AutoLaunchGenericManager$4;
.super Ljava/lang/Object;
.source "AutoLaunchGenericManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/AutoLaunchGenericManager;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/gamepad/GamePadManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentActivityChange(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    iput-object p1, v0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mCurrentActivity:Landroid/app/Activity;

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->access$100(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/parrot/freeflight/home/HomeActivity;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->access$102(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;Z)Z

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->checkAutoLaunch()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->checkAutoLaunch()V

    goto :goto_0
.end method

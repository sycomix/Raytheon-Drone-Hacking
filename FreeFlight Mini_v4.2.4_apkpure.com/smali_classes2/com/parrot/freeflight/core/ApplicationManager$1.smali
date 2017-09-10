.class Lcom/parrot/freeflight/core/ApplicationManager$1;
.super Ljava/lang/Object;
.source "ApplicationManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/ApplicationManager;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/ApplicationManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/ApplicationManager;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/ApplicationManager;->access$200(Lcom/parrot/freeflight/core/ApplicationManager;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/ApplicationManager;->access$202(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/app/Activity;)Landroid/app/Activity;

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/ApplicationManager;->access$300(Lcom/parrot/freeflight/core/ApplicationManager;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/ApplicationManager;->access$202(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/app/Activity;)Landroid/app/Activity;

    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/ApplicationManager;->access$300(Lcom/parrot/freeflight/core/ApplicationManager;)V

    .line 50
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/ApplicationManager;->access$008(Lcom/parrot/freeflight/core/ApplicationManager;)I

    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/ApplicationManager;->access$000(Lcom/parrot/freeflight/core/ApplicationManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/ApplicationManager;->access$100(Lcom/parrot/freeflight/core/ApplicationManager;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/ApplicationManager;->access$010(Lcom/parrot/freeflight/core/ApplicationManager;)I

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/ApplicationManager;->access$000(Lcom/parrot/freeflight/core/ApplicationManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager$1;->this$0:Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/ApplicationManager;->access$100(Lcom/parrot/freeflight/core/ApplicationManager;)V

    .line 66
    :cond_0
    return-void
.end method

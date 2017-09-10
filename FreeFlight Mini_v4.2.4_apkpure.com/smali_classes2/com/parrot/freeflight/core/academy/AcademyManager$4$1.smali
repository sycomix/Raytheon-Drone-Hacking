.class Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager$4;->youtubeManagerAppShouldBeAllowed(Lcom/parrot/freeflight3/ARYoutubeManager;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager$4;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1400(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1400(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iget-object v1, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1500(Lcom/parrot/freeflight/core/academy/AcademyManager;)I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;->authenticationNeeded(ILandroid/content/Intent;I)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1600(Lcom/parrot/freeflight/core/academy/AcademyManager;I)V

    goto :goto_0
.end method

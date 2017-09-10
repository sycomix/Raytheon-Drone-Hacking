.class Lcom/parrot/freeflight/academy/MyFlightsActivity$6;
.super Ljava/lang/Object;
.source "MyFlightsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$6;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .line 182
    .local v1, "run":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$6;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$200(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v2

    .line 183
    .local v2, "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v2, :cond_0

    .line 185
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$6;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    const-class v4, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "extra_run_uuid"

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$6;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

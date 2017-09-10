.class Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$1;
.super Ljava/lang/Object;
.source "MyFlightsDetailsActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/MediaManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localMediaUpdated()V
    .locals 4

    .prologue
    .line 132
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$000(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v1

    .line 133
    .local v1, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v0

    .line 135
    .local v0, "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$100(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$300(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$200(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    .end local v0    # "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local v0    # "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$400(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Landroid/view/View;

    move-result-object v3

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$200(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

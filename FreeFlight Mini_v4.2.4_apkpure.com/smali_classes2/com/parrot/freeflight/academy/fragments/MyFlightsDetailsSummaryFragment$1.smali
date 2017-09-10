.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$1;
.super Ljava/lang/Object;
.source "MyFlightsDetailsSummaryFragment.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$1;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 3
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 87
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$1;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v0

    .line 88
    .local v0, "run":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz v0, :cond_0

    .line 89
    float-to-int v1, p2

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$1;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->updateRunGrade(I)V

    .line 93
    :cond_0
    return-void
.end method

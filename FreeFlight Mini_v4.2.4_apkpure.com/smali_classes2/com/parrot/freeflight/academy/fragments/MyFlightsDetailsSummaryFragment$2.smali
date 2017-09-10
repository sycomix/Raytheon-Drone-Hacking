.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;
.super Ljava/lang/Object;
.source "MyFlightsDetailsSummaryFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 105
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "id"    # I

    .prologue
    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v0

    .line 109
    .local v0, "run":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz v0, :cond_0

    .line 110
    packed-switch p2, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/google/Analytic;->trackMainMyFlightsConncetedOkFlightPrivate()V

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->updateRunGrade(Z)V

    goto :goto_0

    .line 116
    :pswitch_1
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/google/Analytic;->trackMainMyFlightsConncetedOkFlightPublic()V

    .line 117
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->updateRunGrade(Z)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x7f0f025f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

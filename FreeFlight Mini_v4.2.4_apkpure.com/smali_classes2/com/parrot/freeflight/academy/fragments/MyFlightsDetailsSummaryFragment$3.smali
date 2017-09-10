.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$3;
.super Ljava/lang/Object;
.source "MyFlightsDetailsSummaryFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


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
    .line 124
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$3;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$3;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->access$000(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;)V

    .line 128
    return-void
.end method

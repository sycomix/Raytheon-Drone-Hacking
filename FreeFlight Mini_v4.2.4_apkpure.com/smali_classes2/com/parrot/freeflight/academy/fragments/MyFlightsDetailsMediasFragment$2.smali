.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$2;
.super Ljava/lang/Object;
.source "MyFlightsDetailsMediasFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 78
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->access$200(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MyFlightsDetailsMediaFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->access$100(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MyFlightsDetailsMediaFragmentListener;->onMediaClicked(Ljava/util/ArrayList;I)V

    .line 79
    return-void
.end method

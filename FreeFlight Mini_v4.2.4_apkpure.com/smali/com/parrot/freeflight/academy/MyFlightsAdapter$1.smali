.class Lcom/parrot/freeflight/academy/MyFlightsAdapter$1;
.super Ljava/lang/Object;
.source "MyFlightsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    iput p2, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->access$100(Lcom/parrot/freeflight/academy/MyFlightsAdapter;)Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;->onItemDelete(I)V

    .line 116
    return-void
.end method

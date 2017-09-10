.class Lcom/parrot/freeflight/home/connection/DirectPairingActivity$3;
.super Ljava/lang/Object;
.source "DirectPairingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    .line 92
    return-void
.end method

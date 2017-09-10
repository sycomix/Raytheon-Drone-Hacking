.class Lcom/parrot/freeflight/home/connection/DirectPairingActivity$5;
.super Ljava/lang/Object;
.source "DirectPairingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


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
    .line 128
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$400(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V

    .line 132
    return-void
.end method

.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner$1;
.super Ljava/lang/Object;
.source "ARDiscoveryBLEDiscoveryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

.field final synthetic val$this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner$1;->this$1:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner$1;->val$this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner$1;->this$1:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->access$900(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;)V

    .line 338
    return-void
.end method

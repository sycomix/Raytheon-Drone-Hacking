.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$LocalBinder;
.super Landroid/os/Binder;
.source "ARDiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$LocalBinder;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getService"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$LocalBinder;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    return-object v0
.end method

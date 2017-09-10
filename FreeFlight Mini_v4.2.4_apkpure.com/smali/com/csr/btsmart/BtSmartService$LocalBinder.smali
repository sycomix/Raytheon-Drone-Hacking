.class public Lcom/csr/btsmart/BtSmartService$LocalBinder;
.super Landroid/os/Binder;
.source "BtSmartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/btsmart/BtSmartService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csr/btsmart/BtSmartService;


# direct methods
.method public constructor <init>(Lcom/csr/btsmart/BtSmartService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/csr/btsmart/BtSmartService$LocalBinder;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/csr/btsmart/BtSmartService;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService$LocalBinder;->this$0:Lcom/csr/btsmart/BtSmartService;

    return-object v0
.end method

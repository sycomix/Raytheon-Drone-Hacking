.class Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;
.super Ljava/lang/Object;
.source "UsbAccessoryMux.java"

# interfaces
.implements Lcom/parrot/mux/Mux$IOnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->access$100(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V

    .line 184
    return-void
.end method

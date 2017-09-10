.class Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$2;
.super Ljava/lang/Object;
.source "UsbLightController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->close()V

    .line 79
    return-void
.end method

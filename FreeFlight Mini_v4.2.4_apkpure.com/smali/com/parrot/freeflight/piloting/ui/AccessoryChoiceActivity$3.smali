.class Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$3;
.super Ljava/lang/Object;
.source "AccessoryChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

.field final synthetic val$supportedAccessory:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$3;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$3;->val$supportedAccessory:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnecntedDroneNull()V

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$3;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$3;->val$supportedAccessory:I

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$200(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;I)V

    .line 130
    return-void
.end method

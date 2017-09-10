.class Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$2;
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


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$2;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnecntedDroneNoNull()V

    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$2;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$200(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;I)V

    .line 121
    return-void
.end method

.class Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ProfileEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileEditPagerAdapter"
.end annotation


# static fields
.field private static final DELETE_PAGE_POSITION:I = 0x6


# instance fields
.field private items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V
    .locals 1

    .prologue
    .line 168
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 172
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;Lcom/parrot/freeflight/academy/ProfileEditActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;
    .param p2, "x1"    # Lcom/parrot/freeflight/academy/ProfileEditActivity$1;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;-><init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->notifyChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->updateEditedProfile()V

    return-void
.end method

.method private notifyChanged()V
    .locals 5

    .prologue
    .line 247
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 248
    .local v0, "item":Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;
    if-eqz v0, :cond_0

    .line 249
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$000(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController$State;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;->notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 247
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "item":Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;
    :cond_1
    return-void
.end method

.method private updateEditedProfile()V
    .locals 5

    .prologue
    .line 239
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 240
    .local v0, "item":Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;
    if-eqz v0, :cond_0

    .line 241
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$300(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/academy/ProfileEditController;->getEditedProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;->updateEditedProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V

    .line 239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "item":Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;
    :cond_1
    return-void
.end method


# virtual methods
.method public applyUiTheme()V
    .locals 5

    .prologue
    .line 255
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 256
    .local v0, "item":Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;
    if-eqz v0, :cond_0

    .line 257
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$1000(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;->applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "item":Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;
    :cond_1
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$300(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/ProfileEditController;->getEditedProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;->updateEditedProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 224
    :cond_0
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 225
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x7

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 229
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const v0, 0x7f080484

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f080491

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 186
    packed-switch p2, :pswitch_data_0

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$300(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/ProfileEditController;->getEditedProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;->setData(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V

    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$000(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController$State;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;->notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    aget-object v0, v0, p2

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$1000(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;->applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    aget-object v0, v0, p2

    return-object v0

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage1View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$300(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;-><init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;Lcom/parrot/freeflight/academy/ProfileEditController;)V

    aput-object v1, v0, p2

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage2View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage2View;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p2

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage3View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage3View;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p2

    goto :goto_0

    .line 197
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage4View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage4View;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p2

    goto :goto_0

    .line 200
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage5View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage5View;-><init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V

    aput-object v1, v0, p2

    goto :goto_0

    .line 203
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage6View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage6View;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p2

    goto/16 :goto_0

    .line 206
    :pswitch_6
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->items:[Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage7View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$300(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/parrot/freeflight/academy/ProfileEditPage7View;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/academy/ProfileEditController;)V

    aput-object v1, v0, p2

    goto/16 :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isSaveButtonDisplayed(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$000(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController$State;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_SAVING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .line 234
    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$000(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController$State;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_CANCELING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .line 235
    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$000(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController$State;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 181
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

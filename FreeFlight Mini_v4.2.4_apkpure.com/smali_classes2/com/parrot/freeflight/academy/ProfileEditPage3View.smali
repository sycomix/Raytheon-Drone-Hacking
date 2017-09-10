.class public Lcom/parrot/freeflight/academy/ProfileEditPage3View;
.super Landroid/widget/FrameLayout;
.source "ProfileEditPage3View.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/ProfileEditPage3View$AcademyListener;
    }
.end annotation


# instance fields
.field private final mAddress:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCity:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCountry:Landroid/widget/Spinner;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCountryAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCountryList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyCountry;",
            ">;"
        }
    .end annotation
.end field

.field private mCountryStringList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostalCode:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const v1, 0x7f040039

    invoke-static {p1, v1, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 55
    const v1, 0x7f0f016d

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mAddress:Landroid/widget/EditText;

    .line 56
    const v1, 0x7f0f016e

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mPostalCode:Landroid/widget/EditText;

    .line 57
    const v1, 0x7f0f016f

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCity:Landroid/widget/EditText;

    .line 58
    const v1, 0x7f0f0170

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    .line 60
    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage3View$1;

    const v2, 0x7f0400a6

    invoke-direct {v1, p0, p1, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage3View$1;-><init>(Lcom/parrot/freeflight/academy/ProfileEditPage3View;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryAdapter:Landroid/widget/ArrayAdapter;

    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f080489

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 82
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 84
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileEditPage3View$AcademyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditPage3View$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileEditPage3View;I)V

    .line 85
    .local v0, "listener":Lcom/parrot/freeflight/academy/ProfileEditPage3View$AcademyListener;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestAllCountry(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/ProfileEditPage3View;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditPage3View;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->onAllCountryRequestSucceed(Ljava/lang/Object;)V

    return-void
.end method

.method private initCountryWithData()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryStringList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 139
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryStringList:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 140
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryAdapter:Landroid/widget/ArrayAdapter;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 143
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v1

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryStringList:Ljava/util/List;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getPrintableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 147
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private onAllCountryRequestSucceed(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 176
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 161
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryList:Ljava/util/List;

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryStringList:Ljava/util/List;

    .line 163
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    .local v1, "countryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .line 166
    .local v0, "academyCountry":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryStringList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getPrintableName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    .end local v0    # "academyCountry":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->initCountryWithData()V

    goto :goto_0
.end method


# virtual methods
.method public applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 1
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mAddress:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCity:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mPostalCode:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 213
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/parrot/freeflight/academy/ProfileEditController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    return-void
.end method

.method public setData(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mAddress:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mPostalCode:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCity:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mAddress:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mPostalCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCity:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .line 97
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->initCountryWithData()V

    .line 98
    return-void
.end method

.method public updateEditedProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, -0x1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mAddress:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setAddress1(Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mPostalCode:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mPostalCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setPostalCode(Ljava/lang/String;)V

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCity:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCity:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setCity(Ljava/lang/String;)V

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryList:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountry:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 114
    .local v1, "position":I
    if-eq v1, v4, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 116
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-virtual {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setCountry(Lcom/parrot/arsdk/aracademy/ARAcademyCountry;)V

    .line 126
    .end local v1    # "position":I
    :cond_3
    :goto_0
    return-void

    .line 117
    .restart local v1    # "position":I
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryStringList:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryStringList:Ljava/util/List;

    const-string v3, "Unknown Country"

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 119
    .local v0, "index":I
    if-le v0, v4, :cond_3

    .line 120
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->mCountryList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-virtual {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setCountry(Lcom/parrot/arsdk/aracademy/ARAcademyCountry;)V

    goto :goto_0
.end method

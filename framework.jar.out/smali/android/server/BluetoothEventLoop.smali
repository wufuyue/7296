.class Landroid/server/BluetoothEventLoop;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CREATE_DEVICE_ALREADY_EXISTS:I = 0x1

.field private static final CREATE_DEVICE_FAILED:I = -0x1

.field private static final CREATE_DEVICE_SUCCESS:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_AGENT_CANCEL:I = 0x2

.field private static final EVENT_PAIRING_CONSENT_DELAYED_ACCEPT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothEventLoop"


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAuthorizationAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInterrupted:Z

.field private mNativeData:I

.field private final mPasskeyAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStarted:Z

.field private mThread:Ljava/lang/Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 103
    invoke-static {}, Landroid/server/BluetoothEventLoop;->classInitNative()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 3
    .parameter "context"
    .parameter "adapter"
    .parameter "bluetoothService"
    .parameter "bluetoothState"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v1, Landroid/server/BluetoothEventLoop$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothEventLoop$1;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v1, Landroid/server/BluetoothEventLoop$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothEventLoop$2;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 109
    iput-object p3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    .line 110
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    .line 111
    iput-object p4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    .line 114
    iput-object p2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 116
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 117
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "BluetoothEventLoop"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 120
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->initializeNativeDataNative()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$102(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method private addDevice(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[API] addDevice("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 183
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->getDeviceProperties()Landroid/server/BluetoothDeviceProperties;

    move-result-object v2

    .line 185
    .local v2, deviceProperties:Landroid/server/BluetoothDeviceProperties;
    invoke-virtual {v2, p1, p2}, Landroid/server/BluetoothDeviceProperties;->addProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    .line 186
    const-string v7, "RSSI"

    invoke-virtual {v2, p1, v7}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, rssi:Ljava/lang/String;
    const-string v7, "Class"

    invoke-virtual {v2, p1, v7}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, classValue:Ljava/lang/String;
    const-string v7, "Name"

    invoke-virtual {v2, p1, v7}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, name:Ljava/lang/String;
    const-string v7, "Alias"

    invoke-virtual {v2, p1, v7}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, aliasName:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 194
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-short v6, v7

    .line 198
    .local v6, rssiValue:S
    :goto_0
    if-eqz v1, :cond_2

    .line 199
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.FOUND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    const-string v7, "android.bluetooth.device.extra.CLASS"

    new-instance v8, Landroid/bluetooth/BluetoothClass;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    const-string v7, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    move-object v4, v0

    .line 207
    :cond_0
    const-string v7, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 213
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 196
    .end local v6           #rssiValue:S
    :cond_1
    const/16 v6, -0x8000

    .restart local v6       #rssiValue:S
    goto :goto_0

    .line 211
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClassValue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for remote device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] checkPairingRequestAndGetAddress("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 551
    if-nez v0, :cond_0

    .line 552
    const-string v2, "BluetoothEventLoop"

    const-string v3, "Unable to get device address in checkPairingRequestAndGetAddress, returning null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_0
    return-object v1

    .line 556
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 557
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 561
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    goto :goto_0

    .line 569
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    .line 570
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    :cond_2
    move-object v1, v0

    .line 571
    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private isOtherSinkInNonDisconnectedState(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 906
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 911
    .local v1, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v3

    .line 912
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 913
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 906
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1127
    const-string v0, "BluetoothEventLoop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return-void
.end method

.method private onAgentAuthorize(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "objectPath"
    .parameter "deviceUuid"
    .parameter "nativeData"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 833
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 890
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, address:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[API] onAgentAuthorize("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 837
    if-nez v0, :cond_1

    .line 838
    const-string v4, "BluetoothEventLoop"

    const-string v5, "Unable to get device address in onAuthAgentAuthorize"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 842
    :cond_1
    const/4 v1, 0x0

    .line 843
    .local v1, authorized:Z
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    .line 845
    .local v3, uuid:Landroid/os/ParcelUuid;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 846
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v6, :cond_5

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    invoke-direct {p0, v0}, Landroid/server/BluetoothEventLoop;->isOtherSinkInNonDisconnectedState(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 854
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-lez v6, :cond_3

    move v1, v4

    .line 855
    :goto_1
    if-eqz v1, :cond_4

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 856
    const-string v4, "BluetoothEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "First check pass for incoming A2DP / AVRCP connection from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0, v5}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    .line 889
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAgentAuthorize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v1, v5

    .line 854
    goto :goto_1

    .line 864
    :cond_4
    const-string v5, "BluetoothEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Incoming A2DP / AVRCP connection from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v2, v1}, Landroid/bluetooth/BluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 867
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0, v4}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    goto :goto_2

    .line 869
    :cond_5
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isInputDevice(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 871
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2}, Landroid/server/BluetoothService;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-lez v6, :cond_6

    move v1, v4

    .line 873
    :goto_3
    if-eqz v1, :cond_7

    .line 874
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First check pass for incoming HID connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->notifyIncomingHidConnection(Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_6
    move v1, v5

    .line 871
    goto :goto_3

    .line 878
    :cond_7
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejecting incoming HID connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_2

    .line 881
    :cond_8
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isBnep(Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 883
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/server/BluetoothService;->allowIncomingTethering()Z

    move-result v1

    .line 884
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_2

    .line 886
    :cond_9
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejecting incoming "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_2
.end method

.method private onAgentCancel()V
    .locals 5

    .prologue
    .line 922
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "[API] onAgentCancel()"

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 924
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 929
    return-void
.end method

.method private onAgentOutOfBandDataAvailable(Ljava/lang/String;)Z
    .locals 4
    .parameter "objectPath"

    .prologue
    const/4 v1, 0x0

    .line 893
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 902
    :cond_0
    :goto_0
    return v1

    .line 895
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 898
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 900
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onCreateDeviceResult(Ljava/lang/String;I)V
    .locals 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of onCreateDeviceResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 962
    packed-switch p2, :pswitch_data_0

    .line 978
    :goto_0
    :pswitch_0
    return-void

    .line 964
    :pswitch_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 966
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 969
    :cond_0
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Device exists, but we don\'t have the bluez path, failing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    .end local v0           #path:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 973
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 962
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "result"

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onCreatePairedDeviceResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 273
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->onCreatePairedDeviceResult(Ljava/lang/String;I)V

    .line 274
    return-void
.end method

.method private onDeviceCreated(Ljava/lang/String;)V
    .locals 5
    .parameter "deviceObjectPath"

    .prologue
    .line 282
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] onDeviceCreated("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 284
    if-nez v0, :cond_1

    .line 285
    const-string v2, "BluetoothEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDeviceCreated: device address null! deviceObjectPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, properties:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 293
    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeviceDisappeared(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] onDeviceDisappeared("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 241
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private onDeviceDisconnectRequested(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"

    .prologue
    .line 252
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] onDeviceDisconnectRequested("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 254
    if-nez v0, :cond_0

    .line 255
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceDisconnectRequested: Address of the remote device in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeviceFound(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onDeviceFound("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 225
    if-nez p2, :cond_0

    .line 226
    const-string v0, "BluetoothEventLoop"

    const-string v1, "ERROR: Remote device properties are null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    const/high16 v11, 0x800

    const/4 v10, 0x1

    .line 407
    const/4 v8, 0x0

    aget-object v5, p2, v8

    .line 408
    .local v5, name:Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 410
    const-string v8, "BluetoothEventLoop"

    const-string/jumbo v9, "onDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device property changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " property: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 416
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 417
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v8, "Name"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 418
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v9, p2, v10

    invoke-virtual {v8, v0, v5, v9}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 421
    const-string v8, "android.bluetooth.device.extra.NAME"

    aget-object v9, p2, v10

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 423
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const-string v8, "Alias"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 425
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v9, p2, v10

    invoke-virtual {v8, v0, v5, v9}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 428
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 429
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    const-string v8, "Class"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 431
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v9, p2, v10

    invoke-virtual {v8, v0, v5, v9}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 434
    const-string v8, "android.bluetooth.device.extra.CLASS"

    new-instance v9, Landroid/bluetooth/BluetoothClass;

    aget-object v10, p2, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 436
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    const-string v8, "Connected"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 439
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v9, p2, v10

    invoke-virtual {v8, v0, v5, v9}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v3, 0x0

    .line 441
    .restart local v3       #intent:Landroid/content/Intent;
    aget-object v8, p2, v10

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 442
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 446
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v9, 0x1f40

    invoke-virtual {v8, v0, v9}, Landroid/server/BluetoothService;->setLinkTimeout(Ljava/lang/String;I)V

    .line 451
    :cond_5
    :goto_1
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 452
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 453
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :cond_6
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 454
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    const-string v8, "UUIDs"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 455
    const/4 v7, 0x0

    .line 456
    .local v7, uuid:Ljava/lang/String;
    aget-object v8, p2, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 457
    .local v4, len:I
    if-lez v4, :cond_9

    .line 458
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v6, str:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    .local v2, i:I
    :goto_2
    array-length v8, p2

    if-ge v2, v8, :cond_8

    .line 460
    aget-object v8, p2, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 463
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 465
    .end local v2           #i:I
    .end local v6           #str:Ljava/lang/StringBuilder;
    :cond_9
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, v0, v5, v7}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, v0}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 470
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 471
    .end local v4           #len:I
    .end local v7           #uuid:Ljava/lang/String;
    :cond_a
    const-string v8, "Paired"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 472
    aget-object v8, p2, v10

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 476
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 477
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v9, 0xc

    invoke-virtual {v8, v0, v9}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 480
    :cond_b
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v9, 0xa

    invoke-virtual {v8, v0, v9}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 481
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v9, "Trusted"

    const-string v10, "false"

    invoke-virtual {v8, v0, v9, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 483
    :cond_c
    const-string v8, "Trusted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set trust state succeeded, value is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 486
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v9, p2, v10

    invoke-virtual {v8, v0, v5, v9}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onDeviceRemoved(Ljava/lang/String;)V
    .locals 5
    .parameter "deviceObjectPath"

    .prologue
    .line 304
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, address:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] onDeviceRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 306
    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 309
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, "UUIDs"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    return-void
.end method

.method private onDiscoverServicesResult(Ljava/lang/String;Z)V
    .locals 2
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 940
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 949
    :goto_0
    return-void

    .line 944
    :cond_0
    if-eqz p2, :cond_1

    .line 945
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)V

    .line 947
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDisplayPasskey(Ljava/lang/String;II)V
    .locals 5
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 762
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, address:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[API] onDisplayPasskey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 764
    if-nez v0, :cond_0

    .line 784
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, pendingOutgoingAddress:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 770
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v4, 0xb

    invoke-virtual {v3, v0, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 775
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 776
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 778
    const-string v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 783
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "devicePath"
    .parameter "channelPath"
    .parameter "exists"

    .prologue
    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health Device : devicePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":channelPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothService;->onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1124
    return-void
.end method

.method private onHealthDeviceConnectionResult(II)V
    .locals 2
    .parameter "chanCode"
    .parameter "result"

    .prologue
    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHealthDeviceConnectionResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1067
    const/16 v0, 0x1770

    if-eq p2, v0, :cond_0

    .line 1068
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService;->onHealthDeviceChannelConnectionError(II)V

    .line 1071
    :cond_0
    return-void
.end method

.method private onHealthDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "devicePath"
    .parameter "propValues"

    .prologue
    const/4 v2, 0x1

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health Device : Name of Property is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v1, p2, v2

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService;->onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method private onInputDeviceConnectionResult(Ljava/lang/String;I)V
    .locals 7
    .parameter "path"
    .parameter "result"

    .prologue
    .line 989
    const/16 v4, 0x138c

    if-eq p2, v4, :cond_0

    .line 990
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1014
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 993
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 994
    .local v1, connected:Z
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 995
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v2}, Landroid/server/BluetoothService;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 996
    .local v3, state:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 997
    const/16 v4, 0x1389

    if-ne p2, v4, :cond_2

    .line 998
    const/4 v1, 0x1

    .line 1012
    :goto_1
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0, v1}, Landroid/server/BluetoothService;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1000
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1002
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 1003
    const/16 v4, 0x1388

    if-ne p2, v4, :cond_4

    .line 1004
    const/4 v1, 0x0

    goto :goto_1

    .line 1007
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 1010
    :cond_5
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error onInputDeviceConnectionResult. State is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onInputDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "propValues"

    .prologue
    .line 499
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 501
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onInputDevicePropertyChanged: Address of the remote device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    return-void

    .line 504
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Device : Name of Property is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, state:Z
    const/4 v2, 0x1

    aget-object v2, p2, v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    const/4 v1, 0x1

    .line 509
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0, v1}, Landroid/server/BluetoothService;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private onNetworkDeviceConnected(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "address"
    .parameter "iface"
    .parameter "destUuid"

    .prologue
    .line 1094
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1095
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 1097
    return-void
.end method

.method private onNetworkDeviceDisconnected(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1080
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1081
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0, v2, v2}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1083
    return-void
.end method

.method private onPanDeviceConnectionResult(Ljava/lang/String;I)V
    .locals 9
    .parameter "path"
    .parameter "result"

    .prologue
    const/4 v5, 0x2

    .line 1024
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPanDeviceConnectionResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1026
    const/16 v6, 0x3ec

    if-eq p2, v6, :cond_0

    .line 1027
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1055
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1030
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 1031
    .local v1, connected:Z
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1032
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2}, Landroid/server/BluetoothService;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 1033
    .local v4, state:I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 1034
    const/16 v6, 0x3e9

    if-ne p2, v6, :cond_2

    .line 1035
    const/4 v1, 0x1

    .line 1050
    :goto_1
    if-eqz v1, :cond_6

    move v3, v5

    .line 1052
    .local v3, newState:I
    :goto_2
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2, v3, v5}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 1037
    .end local v3           #newState:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1039
    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 1040
    const/16 v6, 0x3e8

    if-ne p2, v6, :cond_4

    .line 1041
    const/4 v1, 0x0

    goto :goto_1

    .line 1044
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 1047
    :cond_5
    const-string v6, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error onPanDeviceConnectionResult. State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1050
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private onPanDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 521
    aget-object v3, p2, v8

    .line 522
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 524
    const-string v4, "BluetoothEventLoop"

    const-string/jumbo v5, "onPanDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pan Device property changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 531
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 532
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "Connected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 533
    aget-object v4, p2, v6

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v1, v8, v7}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 538
    :cond_2
    const-string v4, "Interface"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    aget-object v2, p2, v6

    .line 540
    .local v2, iface:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 541
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v1, v2, v7, v7}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private onRequestOobData(Ljava/lang/String;I)V
    .locals 5
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 807
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, pendingOutgoingAddress:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 814
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v4, 0xb

    invoke-virtual {v3, v0, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 818
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 820
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v4, 0x6

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 822
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPairingConsent(Ljava/lang/String;I)V
    .locals 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 582
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, address:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[API] onRequestPairingConsent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 584
    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, pendingOutgoingAddress:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 590
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v5, 0xb

    invoke-virtual {v4, v0, v5}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 600
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 601
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 602
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 603
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x5dc

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 607
    .end local v2           #message:Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 608
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 610
    const-string v4, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 614
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onRequestPasskey(Ljava/lang/String;I)V
    .locals 5
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 660
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, address:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[API] onRequestPasskey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 662
    if-nez v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 666
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, pendingOutgoingAddress:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 669
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v4, 0xb

    invoke-virtual {v3, v0, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 672
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 674
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 678
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onRequestPasskeyConfirmation(Ljava/lang/String;II)V
    .locals 5
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 627
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, address:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[API] onRequestPasskeyConfirmation("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 629
    if-nez v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 634
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, pendingOutgoingAddress:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 637
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v4, 0xb

    invoke-virtual {v3, v0, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 641
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 643
    const-string v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onRequestPinCode(Ljava/lang/String;I)V
    .locals 10
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 690
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, address:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[API] onRequestPinCode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 692
    if-nez v0, :cond_0

    .line 750
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, pendingOutgoingAddress:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 699
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v7, 0xb

    invoke-virtual {v6, v0, v7}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 702
    :cond_1
    new-instance v1, Landroid/bluetooth/BluetoothClass;

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v6}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 703
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 705
    .local v2, btDeviceClass:I
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 709
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 710
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getDockPin()Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, pin:Ljava/lang/String;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 716
    .end local v5           #pin:Ljava/lang/String;
    :cond_2
    sparse-switch v2, :sswitch_data_0

    .line 726
    :cond_3
    const/16 v6, 0x540

    if-eq v2, v6, :cond_4

    const/16 v6, 0x5c0

    if-ne v2, v6, :cond_6

    .line 732
    :cond_4
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 733
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v7, "0000"

    invoke-static {v7}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 722
    :sswitch_0
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->attemptAutoPair(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 738
    :cond_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 739
    .local v5, pin:I
    invoke-direct {p0, v0, v5}, Landroid/server/BluetoothEventLoop;->sendDisplayPinIntent(Ljava/lang/String;I)V

    goto :goto_0

    .line 743
    .end local v5           #pin:I
    :cond_6
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 744
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 746
    const-string v6, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 747
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 749
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 716
    nop

    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x418 -> :sswitch_0
        0x41c -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendDisplayPinIntent(Ljava/lang/String;I)V
    .locals 3
    .parameter "address"
    .parameter "pin"

    .prologue
    .line 788
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 791
    const-string v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 792
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 794
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 797
    return-void
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 144
    const-string v0, "[API] finalize()"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 146
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getAuthorizationAgentRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getPasskeyAgentRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getProfileProxy()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 125
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 126
    return-void
.end method

.method public isEventLoopRunning()Z
    .locals 1

    .prologue
    .line 177
    const-string v0, "[API] isEventLoopRunning()"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    return v0
.end method

.method onPropertyChanged([Ljava/lang/String;)V
    .locals 14
    .parameter "propValues"

    .prologue
    .line 323
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->getAdapterProperties()Landroid/server/BluetoothAdapterProperties;

    move-result-object v0

    .line 326
    .local v0, adapterProperties:Landroid/server/BluetoothAdapterProperties;
    invoke-virtual {v0}, Landroid/server/BluetoothAdapterProperties;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/server/BluetoothAdapterProperties;->getAllProperties()V

    .line 331
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Property Changed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 332
    const/4 v10, 0x0

    aget-object v6, p1, v10

    .line 333
    .local v6, name:Ljava/lang/String;
    const-string v10, "Name"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 334
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v0, v6, v10}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v3, intent:Landroid/content/Intent;
    const-string v10, "android.bluetooth.adapter.extra.LOCAL_NAME"

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const/high16 v10, 0x800

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 396
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    const-string v10, "Pairable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "Discoverable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 340
    :cond_3
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v0, v6, v10}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v10, "Discoverable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 343
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v11, 0x35

    invoke-virtual {v10, v11}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 346
    :cond_4
    const-string v10, "Pairable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    aget-object v7, p1, v10

    .line 348
    .local v7, pairable:Ljava/lang/String;
    :goto_1
    const-string v10, "Discoverable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    aget-object v1, p1, v10

    .line 352
    .local v1, discoverable:Ljava/lang/String;
    :goto_2
    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    .line 355
    const-string/jumbo v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v11, "true"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v10, v11}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v5

    .line 358
    .local v5, mode:I
    if-ltz v5, :cond_1

    .line 359
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const/high16 v10, 0x800

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 362
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    .end local v1           #discoverable:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #mode:I
    .end local v7           #pairable:Ljava/lang/String;
    :cond_5
    const-string v10, "Pairable"

    invoke-virtual {v0, v10}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 348
    .restart local v7       #pairable:Ljava/lang/String;
    :cond_6
    const-string v10, "Discoverable"

    invoke-virtual {v0, v10}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 364
    .end local v7           #pairable:Ljava/lang/String;
    :cond_7
    const-string v10, "Discovering"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 366
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v0, v6, v10}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v10, 0x1

    aget-object v10, p1, v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 368
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_3
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 375
    .end local v3           #intent:Landroid/content/Intent;
    :cond_9
    const-string v10, "Devices"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "UUIDs"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 376
    :cond_a
    const/4 v9, 0x0

    .line 377
    .local v9, value:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 378
    .local v4, len:I
    if-lez v4, :cond_c

    .line 379
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v8, str:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    .local v2, i:I
    :goto_4
    array-length v10, p1

    if-ge v2, v10, :cond_b

    .line 381
    aget-object v10, p1, v2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 384
    :cond_b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 386
    .end local v2           #i:I
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual {v0, v6, v9}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v10, "UUIDs"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 388
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10, v9}, Landroid/server/BluetoothService;->updateBluetoothState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    .end local v4           #len:I
    .end local v9           #value:Ljava/lang/String;
    :cond_d
    const-string v10, "Powered"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 391
    iget-object v11, p0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v12, 0x36

    const/4 v10, 0x1

    aget-object v10, p1, v10

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    new-instance v10, Ljava/lang/Boolean;

    const/4 v13, 0x1

    invoke-direct {v10, v13}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_5
    invoke-virtual {v11, v12, v10}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    new-instance v10, Ljava/lang/Boolean;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_5

    .line 393
    :cond_f
    const-string v10, "DiscoverableTimeout"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 394
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v0, v6, v10}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method start()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "[API] start()"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const-string v0, "Starting Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->startEventLoopNative()V

    .line 166
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 169
    const-string v0, "[API] stop()"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "Stopping Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->stopEventLoopNative()V

    .line 174
    :cond_0
    return-void
.end method
